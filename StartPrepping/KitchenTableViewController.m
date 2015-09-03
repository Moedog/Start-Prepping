//
//  KitchenTableViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "KitchenTableViewController.h"
#import "KitchenCellController.h"
#import "KitchenPreps.h"

@interface KitchenTableViewController ()
@property (strong, nonatomic) NSArray *kitchen;

@property (assign, nonatomic) NSNumber *bottledWater;
@property (assign, nonatomic) NSNumber *brilloPads;
@property (assign, nonatomic) NSNumber *cardboardBoxes;
@property (assign, nonatomic) NSNumber *cleaningRags;
@property (assign, nonatomic) NSNumber *dishsoap;
@property (assign, nonatomic) NSNumber *dishwasherSoap;
@property (assign, nonatomic) NSNumber *foilwrap;
@property (assign, nonatomic) NSNumber *foodSpices;
@property (assign, nonatomic) NSNumber *foodStorageBags;
@property (assign, nonatomic) NSNumber *garbageBags;
@property (assign, nonatomic) NSNumber *handSoap;
@property (assign, nonatomic) NSNumber *paperTowels;
@property (assign, nonatomic) NSNumber *paperOrPlasticPlates;
@property (assign, nonatomic) NSNumber *plasticSilverware;
@property (assign, nonatomic) NSNumber *saranwrap;


@end

@implementation KitchenTableViewController
- (IBAction)saveKitchen:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.kitchen = @[
                     
                     [KitchenPreps prepsInKitchen:@"Bottled Water" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Brillo Pads" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Cardboard Boxes" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Cleaning Rags"enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Dish Soap" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Dishwasher Soap" enabled:YES],
                     
                     
                     [KitchenPreps prepsInKitchen:@"Foilwrap" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Food Spices" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Food Storage Bags" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Garbage Bags" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Hand Soap" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Paper Towels" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Paper/Plastic Plates" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Plastic Silverware" enabled:YES],
                     [KitchenPreps prepsInKitchen:@"Saranwrap" enabled:YES]];
                     
                     
    
    

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
    return self.kitchen.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KitchenCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell"];
               
    KitchenPreps *prepsInKitchen = self.kitchen[indexPath.row];
                             
    cell.kitchenLabel.text = prepsInKitchen.prepsInKitchen;
    
    cell.kitchenSwitch.enabled = prepsInKitchen.enabled;
    
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
