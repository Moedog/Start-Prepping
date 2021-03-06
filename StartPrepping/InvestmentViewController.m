//
//  InvestmentViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/24/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "InvestmentViewController.h"

NSString * const goldValue = @"1100";
NSString * const silverValue = @"15";
NSString * const bitcoinValue = @"350";

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
        self.currentValueLabel.text = @"GOLD - Aprox. Current Value: $1100/oz.";
        self.currencyAmount.text = @"Amount of Gold To Purchase (oz.)";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
//        NSInteger calculateCostOfUnits = goldValue * self.currencyAmount.text
//        self.valueInCurrency.text = [NSString stringWithFormat:@"That amount is currently worth @%f oz. in gold.", [self calculateCostOfUnits]];
//        self.valueInDollars.text = @"That amount is currently worth @%ld dollars.";
// SILVER
    }else if (self.currencySegment.selectedSegmentIndex == 1) {
        self.currentValueLabel.text = @"SILVER - Aprox. Current Value: $15/oz.";
        self.currencyAmount.text = @"Amount of Silver To Purchase (oz.)";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
//        self.valueInCurrency.text = @"That amount is currently worth @%f oz. in silver.";
//        self.valueInDollars.text = @"That amount is currently worth @%f dollars.";
 // BITCOIN
    }else if (self.currencySegment.selectedSegmentIndex == 2) {
        self.currentValueLabel.text = @"BITCOIN - Aprox. Current Value: $350/bitcoin";
        self.currencyAmount.text = @"Amount of Bitcoin To Purchase";
        self.currencyDollars.text = @"Amount of Dollars To Invest";
//        self.valueInCurrency.text = @"That amount is currently worth @%f bitcoin.";
//        self.valueInDollars.text = @"That amount is currently worth @%f dollars.";
        }
//-(NSInteger) *goldCalculation = gold = [currentGoldPrice * goldinput]
    
}

//NSInteger calculateCostOfUnits = goldValue * self.currencyAmount.text
//self.valueInDollars.text = [NSString stringWithFormat: @"That amount is currently worth @ld dollars.", (long)goldValue];

- (IBAction)costOfUnits:(id)sender {
    
    //Next few lines is to specify number of digits in the calculated answer.  This is also used in the amountOfUnits method.
    
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    
    [formatter setMaximumFractionDigits:2];
    
    NSString *numberString = [formatter stringFromNumber:[NSNumber numberWithFloat:[self costOfUnits]]];
    
        //GOLD
    if (self.currencySegment.selectedSegmentIndex == 0) {
        self.valueInDollars.text = [NSString stringWithFormat:@"That amount is currently worth %@ U.S. dollars.", numberString];
        
        // SILVER
    }else if (self.currencySegment.selectedSegmentIndex == 1) {
        self.valueInDollars.text = [NSString stringWithFormat:@"That amount is currently worth %@ U.S. dollars.", numberString];

        // BITCOIN
    }else if (self.currencySegment.selectedSegmentIndex == 2) {
        self.valueInDollars.text = [NSString stringWithFormat:@"That amount is currently worth %@ U.S. dollars.", numberString];

    }
}

- (IBAction)amountOfUnits:(id)sender {
    
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    
    [formatter setMaximumFractionDigits:2];
    
    NSString *numberString = [formatter stringFromNumber:[NSNumber numberWithFloat:[self amountOfUnits]]];
    
        //GOLD
    if (self.currencySegment.selectedSegmentIndex == 0) {
        self.valueInCurrency.text = [NSString stringWithFormat:@"That amount is currently worth %@ oz. in gold.", numberString];
        
        // SILVER
    }else if (self.currencySegment.selectedSegmentIndex == 1) {
        self.valueInCurrency.text = [NSString stringWithFormat:@"That amount is currently worth %@ oz. in silver.", numberString];
        
        //BITCOIN
    }else if (self.currencySegment.selectedSegmentIndex == 2) {
        self.valueInCurrency.text = [NSString stringWithFormat:@"That amount is currently worth %@ bitcoin.", numberString];
    }

}
- (CGFloat) costOfUnits {
    
    if (self.currencySegment.selectedSegmentIndex == 0) {
        return [self.numberOfUnitsTextField.text floatValue] * [goldValue floatValue];
    } else if (self.currencySegment.selectedSegmentIndex == 1) {
        return [self.numberOfUnitsTextField.text floatValue] * [silverValue floatValue];
    } else {
        return [self.numberOfUnitsTextField.text floatValue] * [bitcoinValue floatValue];
    }
    
}

-(CGFloat) amountOfUnits {
    
    if (self.currencySegment.selectedSegmentIndex == 0) {
        return [self.numberOfDollarsTextField.text floatValue] / [goldValue floatValue];
    } else if (self.currencySegment.selectedSegmentIndex == 1) {
        return [self.numberOfDollarsTextField.text floatValue] / [silverValue floatValue];
    } else {
        return [self.numberOfDollarsTextField.text floatValue] / [bitcoinValue floatValue];
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
