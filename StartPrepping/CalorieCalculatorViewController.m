//
//  CalorieCalculatorViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/12/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CalorieCalculatorViewController.h"

@interface CalorieCalculatorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation CalorieCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberAdults.dataSource = self;
    self.numberAdults.delegate = self;
    
    self.numberChildren.dataSource = self;
    self.numberChildren.delegate = self;
    
    self.caloriesAdults.dataSource = self;
    self.caloriesAdults.delegate = self;
    
    self.caloriesChildren.dataSource = self;
    self.caloriesChildren.delegate = self;
    
//    self.calculate.dataSource = self;
//    self.calculate.delegate = self;
    
    
}
- (IBAction)calculateCalories:(id)sender {
    NSInteger product = (self.adults * self.caloriesForAdults) + (self.children * self.caloriesForChildren);
    NSInteger caloriesPerMonth = product * 30;
    self.answerLabel.text = [NSString stringWithFormat:@"You require %ld calories for your family every day OR %ld calories per month.", (long)product, (long)caloriesPerMonth];
}

- (NSArray *)data {
    
    return @[
             [self numberOfAdults],
             [self caloriesOfAdults],
             [self numberOfChildren],
             [self caloriesOfChildren]
             ];
    
}


- (NSArray *)numberOfAdults {
    
    return @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12",
             @"13", @"14", @"15"];
}

- (NSArray *)caloriesOfAdults {
    return @[@"1000", @"1500", @"2000", @"2500", @"3000", @"3500", @"4000", @"4500",
             @"5000", @"5500", @"6000"];
}

- (NSArray *)numberOfChildren  {
    return @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11",
             @"12", @"13", @"14", @"15"];
}


- (NSArray *)caloriesOfChildren  {
    return @[@"500", @"1000", @"1500", @"2000", @"2500", @"3000"];
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (pickerView == self.numberAdults) {
        NSString *newAdults = self.numberOfAdults[[pickerView selectedRowInComponent:0]];
        self.adults = [newAdults intValue];
    }
    else if (pickerView == self.caloriesAdults) {
        NSString *newAdultCalories = self.caloriesOfAdults[[pickerView selectedRowInComponent:0]];
        self.caloriesForAdults = [newAdultCalories intValue];
    }
    else if (pickerView == self.numberChildren) {
        NSString *newChildren = self.numberOfChildren[[pickerView selectedRowInComponent:0]];
        self.children = [newChildren intValue];
    }
    else if (pickerView == self.caloriesChildren) {
        NSString *newChildrenCalories = self.caloriesOfChildren[[pickerView selectedRowInComponent:0]];
        self.caloriesForChildren = [newChildrenCalories intValue];
    }
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (pickerView == self.numberAdults) {
        return self.numberOfAdults.count;
    } else if (pickerView == self.numberChildren) {
        return self.numberOfChildren.count;
    } else if (pickerView == self.caloriesAdults) {
        return self.caloriesOfAdults.count;
    } else if (pickerView == self.caloriesChildren) {
        return self.caloriesOfChildren.count;
    } else {
        return 3;
    }
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView == self.numberAdults) {
        return self.numberOfAdults[row];
    } else if (pickerView == self.numberChildren) {
        return self.numberOfChildren[row];
    } else if (pickerView == self.caloriesAdults) {
        return self.caloriesOfAdults[row];
    } else if (pickerView == self.caloriesChildren) {
        return self.caloriesOfChildren[row];
    } else {
        return @"";
    }
    

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
    
    
    
    
