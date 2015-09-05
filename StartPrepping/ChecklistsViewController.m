//
//  ChecklistsViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ChecklistsViewController.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //CODE TO CHANGE COLOR OF "BACK" BUTTON
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:85/255.0 green:44/255.0 blue:16/255.0 alpha:1]];
    [[UINavigationBar appearance] setTitleTextAttributes: [ NSDictionary dictionaryWithObjectsAndKeys:[UIColor brownColor],NSForegroundColorAttributeName, nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
