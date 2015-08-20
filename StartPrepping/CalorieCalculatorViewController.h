//
//  CalorieCalculatorViewController.h
//  StartPrepping
//
//  Created by Mac User on 8/12/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalorieCalculatorViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *numberAdults;
@property (weak, nonatomic) IBOutlet UIPickerView *caloriesAdults;
@property (weak, nonatomic) IBOutlet UIPickerView *numberChildren;
@property (weak, nonatomic) IBOutlet UIPickerView *caloriesChildren;

@end
