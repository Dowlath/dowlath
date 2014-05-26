//
//  RootViewController.m
//  Assessment
//
//  Created by BSA Univ3 on 26/05/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "RootViewController.h"
#import "testViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)save:(id)sender
//{
//    AppDelegate *appDelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];
//    NSEntityDescription *entity=[NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:appDelegate.managedObjectContext];
//    [entity setValue:self.firstname.text forKey:@"name"];
//    NSError *error;
//    BOOL isSaved=[appDelegate.managedObjectContext save:&error];
//    NSLog(@"successfull saved flag: %d",isSaved);
//}
//
//
//- (IBAction)cancel:(id)sender
//{
//    
//}
//
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
