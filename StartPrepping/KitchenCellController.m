//
//  KitchenController.m
//  StartPrepping
//
//  Created by Mac User on 8/8/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "KitchenCellController.h"

@interface KitchenCellController ()

@end

@implementation KitchenCellController

- (IBAction)switchChanged:(id)sender {
    NSLog(@"Switch Changed");
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    
    cell.textLabel.text = [self kitchenPreps] [indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self kitchenPreps].count;
}

- (NSArray *)kitchenPreps {
    return @[@"Kitchen Prep 1", @"Kitchen Prep 2", @"Kitchen Prep 3"];
    
    
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
