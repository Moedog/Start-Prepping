//
//  CampingCellController.h
//  StartPrepping
//
//  Created by Mac User on 8/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CampingCellController : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *campingLabel;

@property (weak, nonatomic) IBOutlet UISwitch *campingSwitch;

@end
