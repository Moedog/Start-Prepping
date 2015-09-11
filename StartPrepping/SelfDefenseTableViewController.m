//
//  SelfDefenseTableViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "SelfDefenseTableViewController.h"
#import "SelfDefenseCellController.h"
#import "DefensePreps.h"


@interface SelfDefenseTableViewController ()
@property (strong, nonatomic) NSArray *defense;

@property (assign, nonatomic) BOOL *handgun;
@property (assign, nonatomic) BOOL *ammoForHandgun;
@property (assign, nonatomic) BOOL *shotgun;
@property (assign, nonatomic) BOOL *shotgunShells;
@property (assign, nonatomic) BOOL *AR15;
@property (assign, nonatomic) BOOL *ammoForAR15;
@property (assign, nonatomic) BOOL *concealedFirearmsPermit;
@property (assign, nonatomic) BOOL *brassKnuckles;
@property (assign, nonatomic) BOOL *bugoutVehicle;
@property (assign, nonatomic) BOOL *bulletproofVest;
@property (assign, nonatomic) BOOL *holstersOrCarryingCases;
@property (assign, nonatomic) BOOL *MaceOrPepperSpray;
@property (assign, nonatomic) BOOL *survivalKnife;
@property (assign, nonatomic) BOOL *edgedWeapons;


@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation SelfDefenseTableViewController
- (IBAction)defenseSave:(id)sender {
    
    NSString *text = self.textView.text;
    
    [[NSUserDefaults standardUserDefaults] setValue:text forKey:@"defenseNotes"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"defenseNotes"]) {
        self.textView.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"defenseNotes"];
    } else {
        self.textView.text = @"TYPE NOTES HERE";
    }

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.defense = @[
                     
                     [DefensePreps prepsInDefense:@"Handgun (9mm or .40cal)"],
                     [DefensePreps prepsInDefense:@"Ammo For Handgun"],
                     [DefensePreps prepsInDefense:@"Shotgun"],
                     [DefensePreps prepsInDefense:@"Shotgun Shells"],
                     [DefensePreps prepsInDefense:@"AR-15"],
                     [DefensePreps prepsInDefense:@"Ammo For AR-15"],
                     [DefensePreps prepsInDefense:@"Concealed Firearms Permit"],
                     [DefensePreps prepsInDefense:@"Brass Knuckles"],
                     [DefensePreps prepsInDefense:@"Bugout Vehicle"],
                     [DefensePreps prepsInDefense:@"Bulletproof Vest"],
                     [DefensePreps prepsInDefense:@"Holsters Or Carrying Cases"],
                     [DefensePreps prepsInDefense:@"Mace/Pepper Spray"],
                     [DefensePreps prepsInDefense:@"Survival Knife"],
                     [DefensePreps prepsInDefense:@"Edged Weapons"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.defense.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SelfDefenseCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell"];
    
    DefensePreps *prepsInDefense = self.defense[indexPath.row];
    
    cell.defenseLabel.text = prepsInDefense.prepsInDefense;
    
    cell.defenseSwitch.on = prepsInDefense.enabled;
    [cell.defenseSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    return cell;
}


-(void) switchChanged:(UISwitch *) defenseSwitch {
    
    for (SelfDefenseCellController *cell in [self.tableView visibleCells]) {
        if (cell.defenseSwitch == defenseSwitch) {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
            DefensePreps *preps = [self.defense objectAtIndex:indexPath.row];
            preps.enabled = defenseSwitch.on;
        }
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
