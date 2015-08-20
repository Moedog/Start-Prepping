//
//  CalorieCalculatorViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/12/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CalorieCalculatorViewController.h"

@interface CalorieCalculatorViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UILabel *numberAdults;
@property (nonatomic, strong) UILabel *caloriesAdults;
@property (nonatomic, strong) UILabel *numberChildren;
@property (nonatomic, strong) UILabel *caloriesChildren;

@end

@implementation CalorieCalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *numberAdults = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 30)];
    numberAdults.textAlignment = NSTextAlignmentCenter;
    numberAdults.font = [UIFont boldSystemFontOfSize:20];
    [self.view addSubview:numberAdults];
    
    self.numberAdults = numberAdults;
    
    UIPickerView *picker = [UIPickerView new];
    picker.frame = CGRectMake(0, (self.view.frame.size.height - picker.frame.size.height) / 2, picker.frame.size.width, picker.frame.size.height);
    picker.delegate = self;
    picker.dataSource = self;
    [self.view addSubview:picker];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.numberAdults.text = [NSString stringWithFormat:@"%@ %@ %@", [self data][0][[pickerView selectedRowInComponent:0]], [self data][1][[pickerView selectedRowInComponent:1]], [self data][2][[pickerView selectedRowInComponent:2]]];
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.data[component][row];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return [self.data count];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.data[component] count];
}

- (NSArray *)data {
    
    return @[
             [self numberAdults],
             [self caloriesAdults],
             [self numberChildren],
             [self caloriesChildren]];
    
}

- (NSArray *)numberAdults {
    
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

- (NSArray *)caloriesAdults {
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

- (NSArray *)numberChildren  {
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


- (NSArray *)caloriesChildren  {
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
