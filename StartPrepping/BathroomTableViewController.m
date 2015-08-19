//
//  BathroomTableViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BathroomTableViewController.h"
#import "BathroomCellController.h"
#import "BathroomPreps.h"

@interface BathroomTableViewController ()
@property (strong, nonatomic) NSArray *bathroom;

@end

@implementation BathroomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.bathroom = @[
                      [BathroomPreps prepsInBathroom:@"Antifungal/Itch Cream" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Antibacterial Ointment" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Birth Control" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Bug Spray" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Cold/Flu Medicine" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Cough Syrup" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Deodorant" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Extra Towels" enabled:YES],
                      
                      [BathroomPreps prepsInBathroom:@"Feminine Hygiene" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"First Aid Kit" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Guaze Pads"enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Hand Soap" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Hydrogen Peroxide" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Ibuprophen" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Lotion" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Mouthwash" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Razors" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Rubbing Alcohol" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Shampoo/Body Wash" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Shaving Cream" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Sore Throat Spray" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Sunscreen Lotion" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Toilet Paper" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Toothbrushes" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Toothpaste" enabled:YES],
                      [BathroomPreps prepsInBathroom:@"Vitamins" enabled: YES]];
    
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
    return self.bathroom.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BathroomCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
    
    BathroomPreps *prepsInBathroom = self.bathroom[indexPath.row];
    
    cell.bathroomLabel.text = prepsInBathroom.prepsInBathroom;
    
    cell.bathroomSwitch.enabled = prepsInBathroom.enabled;
    
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
