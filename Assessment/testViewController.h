//
//  testViewController.h
//  Assessment
//
//  Created by BSA univ 3 on 26/05/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface testViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>


@property (strong, nonatomic) IBOutlet UIView *Detail;

- (IBAction)Click:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *firstname;
@property (weak, nonatomic) IBOutlet UITextField *lastname;
@property (weak, nonatomic) IBOutlet UITextField *phoneno;
- (IBAction)save:(id)sender;



//@property (strong,nonatomic)IBOutlet UIButton * button;

@end
