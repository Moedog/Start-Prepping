//
//  CalorieCalculatorViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/12/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CalorieCalculatorViewController.h"

@interface CalorieCalculatorViewController ()

@end

@implementation CalorieCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberAdults.dataSource = self;
    self.numberAdults.delegate = self;
    
    self.numberChildren.dataSource = self;
    self.numberChildren.delegate = self;
    
}

- (NSArray *)numberOfAdults {
    
    return @[@"1",
             @"2",
             @"3",
             @"4",
             @"5",
             @"6",
             @"7",
             @"8",
             @"9",
             @"10",
             @"11",
             @"12",
             @"13",
             @"14",
             @"15"];
}

- (NSArray *)caloriesofAdults {
    return @[@"1000",
             @"1500",
             @"2000",
             @"2500",
             @"3000",
             @"3500",
             @"4000",
             @"4500",
             @"5000",
             @"5500",
             @"6000"];
}

- (NSArray *)numberOfChildren  {
    return @[@"1",
             @"2",
             @"3",
             @"4",
             @"5",
             @"6",
             @"7",
             @"8",
             @"9",
             @"10",
             @"11",
             @"12",
             @"13",
             @"14",
             @"15"];
}


- (NSArray *)caloriesOfChildren  {
    return @[@"500",
             @"1000",
             @"1500",
             @"2000",
             @"2500",
             @"3000"];
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (pickerView == self.numberAdults) {
        return self.numberOfAdults.count;
    } else if (pickerView == self.numberChildren) {
        return self.numberOfChildren.count;
    } else {
        return 0;
    }
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView == self.numberAdults) {
        return self.numberOfAdults[row];
    } else if (pickerView == self.numberChildren) {
        return self.numberOfChildren[row];
    } else {
        return 0;
    }
}



@end


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

