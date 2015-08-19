//
//  HomePrepsTableViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "HomePrepsTableViewController.h"
#import "HomePrepsCellController.h"
#import "HomePreps.h"

@interface HomePrepsTableViewController ()
@property (strong, nonatomic) NSArray *home;

@end

@implementation HomePrepsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.home = @[
                  
                      [HomePreps prepsInHome:@"Batteries" enabled:YES],
                      [HomePreps prepsInHome:@"Board Games" enabled:YES],
                      [HomePreps prepsInHome:@"Candles" enabled:YES],
                      [HomePreps prepsInHome:@"Duct Tape" enabled:YES],
                      [HomePreps prepsInHome:@"Electric Fans" enabled:YES],
                      [HomePreps prepsInHome:@"Extension Cords" enabled:YES],
                      [HomePreps prepsInHome:@"Extra Blankets"enabled:YES],
                      [HomePreps prepsInHome:@"Fire Extinguisher" enabled:YES],
                      [HomePreps prepsInHome:@"Five Gallon Water Containers" enabled:YES],
                      [HomePreps prepsInHome:@"Five Gallon Gas Cans" enabled:YES],
                      
                      
                      [HomePreps prepsInHome:@"Garden Seeds" enabled:YES],
                      [HomePreps prepsInHome:@"Garden Tools" enabled:YES],
                      [HomePreps prepsInHome:@"Generator" enabled:YES],
                      [HomePreps prepsInHome:@"Ham/Satellite Radio" enabled:YES],
                      [HomePreps prepsInHome:@"Lightbulbs" enabled:YES],
                      [HomePreps prepsInHome:@"Playing Cards" enabled:YES],
                      [HomePreps prepsInHome:@"Portable AC Unit" enabled:YES],
                      [HomePreps prepsInHome:@"Portable Water Heater" enabled:YES],
                      [HomePreps prepsInHome:@"Power Tools" enabled:YES],
                      [HomePreps prepsInHome:@"Propane Tanks" enabled:YES],
                      [HomePreps prepsInHome:@"Space Heater" enabled:YES],
                      [HomePreps prepsInHome:@"Spare Cash ($500 min.)" enabled:YES],
                      [HomePreps prepsInHome:@"Stationary" enabled:YES],
                      [HomePreps prepsInHome:@"Tissues" enabled:YES],
                      [HomePreps prepsInHome:@"Tool Kit" enabled:YES],
                      [HomePreps prepsInHome:@"Work Gloves" enabled:YES]];
    
    
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
    return self.home.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomePrepsCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
    
    HomePreps *prepsInHome = self.home[indexPath.row];
    
    cell.homeLabel.text = prepsInHome.prepsInHome;
    
    cell.homeSwitch.enabled = prepsInHome.enabled;
    
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
