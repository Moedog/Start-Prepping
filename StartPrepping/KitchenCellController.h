//
//  KitchenController.h
//  StartPrepping
//
//  Created by Mac User on 8/8/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KitchenCellController : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *kitchenLabel;

@property (weak, nonatomic) IBOutlet UISwitch *kitchenSwitch;
@end
