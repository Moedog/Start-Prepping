//
//  InvestmentViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/24/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "InvestmentViewController.h"

NSString * const goldValue = @"1100";
NSString * const silverValue = @"16";
NSString * const bitcoinValue = @"245";

@interface InvestmentViewController ()

// Example GOLD - Current Value:
@property (weak, nonatomic) IBOutlet UILabel *currentValueLabel;

// Segmented View Controller
@property (weak, nonatomic) IBOutlet UISegmentedControl *currencySegment;

// Example Amount of Gold To Purchase
@property (weak, nonatomic) IBOutlet UILabel *currencyAmount;

// Example Amount of Dollars To Invest
@property (weak, nonatomic) IBOutlet UILabel *currencyDollars;

// Example Calculate Currency Value
@property (weak, nonatomic) IBOutlet UILabel *valueInCurrency;

// Example Calculate Value In Dollars
@property (weak, nonatomic) IBOutlet UILabel *valueInDollars;

//@property (weak, nonatomic) UILabel * currentGoldPrice;
//
//@property (weak, nonatomic) UILabel * currentSilverPrice;
//
//@property (weak, nonatomic) UILabel * currentBitcoinPrice;

@property (weak, nonatomic) IBOutlet UITextField *numberOfUnitsTextField;

@property (weak, nonatomic) IBOutlet UITextField *numberOfDollarsTextField;

@end

@implementation InvestmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self currencyChanged:self.currencySegment];
    // Do any additional setup after loading the view.
    
    //CODE TO CHANGE COLOR OF "BACK" BUTTON
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:85/255.0 green:44/255.0 blue:16/255.0 alpha:1]];
    [[UINavigationBar appearance] setTitleTextAttributes: [ NSDictionary dictionaryWithObjectsAndKeys:[UIColor brownColor],NSForegroundColorAttributeName, nil]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The following method determins the selection and text fields of the Segmented View Controller (Gold,Silver,or Bitcoin)

//  GOLD
- (IBAction)currencyChanged:(id)sender {
    if (self.currencySegment.selectedSegmentIndex == 0) {
        self.currentValueLabel.text = @"GOLD - Current Value:";
        self.currencyAmount.text = @"Amount of Gold To Purchase (oz.)";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
        self.valueInCurrency.text = [NSString stringWithFormat:@"That amount is currently worth @%f oz. in gold.", [self calculateCostOfUnits]];
        self.valueInDollars.text = @"That amount is currently worth @%d dollars.";
// SILVER
    }else if (self.currencySegment.selectedSegmentIndex == 1) {
        self.currentValueLabel.text = @"SILVER - Current Value:";
        self.currencyAmount.text = @"Amount of Silver To Purchase (oz.)";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
        self.valueInCurrency.text = @"That amount is currently worth @%d oz. in silver.";
        self.valueInDollars.text = @"That amount is currently worth @%d dollars.";
 // BITCOIN
    }else if (self.currencySegment.selectedSegmentIndex == 2) {
        self.currentValueLabel.text = @"BITCOIN - Curent Value:";
        self.currencyAmount.text = @"Amount of Bitcoin To Purchase";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
        self.valueInCurrency.text = @"That amount is currently worth @%d bitcoin.";
        self.valueInDollars.text = @"That amount is currently worth @%d dollars.";
        }
//-(NSInteger) *goldCalculation = gold = [currentGoldPrice * goldinput]
    
}

- (CGFloat)calculateCostOfUnits {
    
    if (self.currencySegment.selectedSegmentIndex == 0) {
        return [self.numberOfUnitsTextField.text intValue] * [goldValue intValue];
    } else if (self.currencySegment.selectedSegmentIndex == 1) {
        return [self.numberOfUnitsTextField.text intValue] * [silverValue intValue];
    } else {
        return [self.numberOfUnitsTextField.text intValue] * [bitcoinValue intValue];
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
