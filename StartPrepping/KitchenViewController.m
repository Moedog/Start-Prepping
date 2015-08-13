//
//  KitchenViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/12/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "KitchenViewController.h"

@interface KitchenViewController ()

@end

@implementation KitchenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSArray *)kitchenPreps {
    return @[@"Kitchen Prep 1", @"Kitchen Prep 2", @"Kitchen Prep 3"];
    
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
