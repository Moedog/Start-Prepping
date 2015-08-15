//
//  HomePrepsCellController.m
//  StartPrepping
//
//  Created by Mac User on 8/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "HomePrepsCellController.h"

@implementation HomePrepsCellController


- (IBAction)switchChanged:(id)sender {
    NSLog(@"Switch Changed");
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    
    cell.textLabel.text = [self homePreps] [indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self homePreps].count;
}

- (NSArray *)homePreps {
    return @[@"Home Prep 1", @"Home Prep 2", @"Home Prep 3"];
    
    
}




//- (void)awakeFromNib {
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
