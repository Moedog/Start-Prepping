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

@end

@implementation SelfDefenseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.defense = @[
                     
                     [DefensePreps prepsInDefense:@"Handgun (9mm or .40cal)" enabled:YES],
                     [DefensePreps prepsInDefense:@"Ammo For Handgun" enabled:YES],
                     [DefensePreps prepsInDefense:@"Shotgun" enabled:YES],
                     [DefensePreps prepsInDefense:@"Shotgun Shells" enabled:YES],
                     [DefensePreps prepsInDefense:@"AR-15" enabled:YES],
                     [DefensePreps prepsInDefense:@"Ammo For AR-15" enabled:YES],
                     [DefensePreps prepsInDefense:@"Concealed Firearms Permit" enabled:YES],
                     [DefensePreps prepsInDefense:@"Brass Knuckles"enabled:YES],
                     [DefensePreps prepsInDefense:@"Bugout Vehicle" enabled:YES],
                     [DefensePreps prepsInDefense:@"Bulletproof Vest" enabled:YES],
                     [DefensePreps prepsInDefense:@"Holsters Or Carrying Cases" enabled:YES],
                     [DefensePreps prepsInDefense:@"Mace/Pepper Spray" enabled:YES],
                     [DefensePreps prepsInDefense:@"Survival Knife" enabled:YES],
                     [DefensePreps prepsInDefense:@"Edged Weapons" enabled:YES]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.defense.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SelfDefenseCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
    
    DefensePreps *prepsInDefense = self.defense[indexPath.row];
    
    cell.defenseLabel.text = prepsInDefense.prepsInDefense;
    
    cell.defenseSwitch.enabled = prepsInDefense.enabled;
    
    return cell;
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
