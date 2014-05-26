//
//  AlertViewController.m
//  Assessment
//
//  Created by BSA univ 1 on 26/05/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()
@property  (nonatomic,strong) NSMutableArray *contacts;
@end

@implementation testViewController

bool isShown = false;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _contacts.count;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    NSManagedObject *obj1=[_contacts objectAtIndex:indexPath.row];
    cell.textLabel.text=[NSString stringWithFormat:@"%@ %@",[obj1 valueForKey:@"firstname" ],[obj1 valueForKey:@"lastname"]];
    cell.detailTextLabel.text=[obj1 valueForKey:@"phoneno"];
    return cell;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    self.contacts =[[NSMutableArray alloc]init];
    [_Detail setHidden:YES];
    [self fetch];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)save:(id)sender
{
    AppDelegate *appDelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    NSEntityDescription *entity=[NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:appDelegate.managedObjectContext];
    [entity setValue:self.firstname.text forKey:@"firstname"];
    [entity setValue:self.lastname.text forKey:@"lastname"];
    [entity setValue:self.phoneno.text forKey:@"phoneno"];
    NSError *error;
    BOOL isSaved=[appDelegate.managedObjectContext save:&error];
    NSLog(@"successfull saved flag: %d",isSaved);
    _Detail.hidden=true;
}



- (void)fetch {
    AppDelegate *appdelegate =(AppDelegate*)[[UIApplication sharedApplication]delegate];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Contact" inManagedObjectContext:appdelegate.managedObjectContext];
//    NSEntityDescription *entity =[NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:appdelegate.managedObjectContext];
    NSFetchRequest *fetch=[[NSFetchRequest alloc]init];
    [fetch setEntity:entity];
    NSMutableArray *get=[[appdelegate.managedObjectContext executeFetchRequest:fetch error:nil] mutableCopy];
    for (NSManagedObject *obj in get)   {
        [self.contacts addObject:obj];
        
        NSLog(@"Contact :%@\n",[obj valueForKey:@"firstname"]);
        NSLog(@"Contact :%@\n",[obj valueForKey:@"lastname"]);
        NSLog(@"Contact :%@\n",[obj valueForKey:@"phoneno"]);
    }
    

}



- (IBAction)Click:(id)sender {
    
     [_Detail setHidden:NO];
    
//    if (!isShown) {
//        _DetailView.frame =  CGRectMake(130, 20, 0, 0);
//        [UIView animateWithDuration:0.25 animations:^{
//            _DetailView.frame =  CGRectMake(130, 30, 100, 200);
//        }];
//        isShown = true;
//    } else {
//        [UIView animateWithDuration:0.25 animations:^{
//            _DetailView.frame =  CGRectMake(130, 30, 0, 0);
//        }];
//        isShown = false;
//    }

}
@end
