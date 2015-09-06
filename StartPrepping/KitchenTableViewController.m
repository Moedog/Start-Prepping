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

@property (assign, nonatomic) BOOL bottledWater;
@property (assign, nonatomic) BOOL brilloPads;
@property (assign, nonatomic) BOOL cardboardBoxes;
@property (assign, nonatomic) BOOL cleaningRags;
@property (assign, nonatomic) BOOL dishsoap;
@property (assign, nonatomic) BOOL dishwasherSoap;
@property (assign, nonatomic) BOOL foilwrap;
@property (assign, nonatomic) BOOL foodSpices;
@property (assign, nonatomic) BOOL foodStorageBags;
@property (assign, nonatomic) BOOL garbageBags;
@property (assign, nonatomic) BOOL handSoap;
@property (assign, nonatomic) BOOL paperTowels;
@property (assign, nonatomic) BOOL paperOrPlasticPlates;
@property (assign, nonatomic) BOOL plasticSilverware;
@property (assign, nonatomic) BOOL saranwrap;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation KitchenTableViewController
- (IBAction)saveKitchen:(id)sender {
    
    NSString *text = self.textView.text;
    
    // TODO: Save "text" into NSUserDefaults
    
    [[NSUserDefaults standardUserDefaults] setValue:text forKey:@"Type Notes"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // TODO: Load text from NSUserDefaults and store into self.textView.text
    // self.textView.text = ...
    
    self.textView.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"Type Notes"];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:85/255.0 green:44/255.0 blue:16/255.0 alpha:1]];
    [[UINavigationBar appearance] setTitleTextAttributes: [ NSDictionary dictionaryWithObjectsAndKeys:[UIColor brownColor],NSForegroundColorAttributeName, nil]];
    
    self.kitchen = @[
                     
                     [KitchenPreps prepsInKitchen:@"Bottled Water"],
                     [KitchenPreps prepsInKitchen:@"Brillo Pads"],
                     [KitchenPreps prepsInKitchen:@"Cardboard Boxes"],
                     [KitchenPreps prepsInKitchen:@"Cleaning Rags"],
                     [KitchenPreps prepsInKitchen:@"Dish Soap"],
                     [KitchenPreps prepsInKitchen:@"Dishwasher Soap"],
                     
                     
                     [KitchenPreps prepsInKitchen:@"Foilwrap"],
                     [KitchenPreps prepsInKitchen:@"Food Spices"],
                     [KitchenPreps prepsInKitchen:@"Food Storage Bags"],
                     [KitchenPreps prepsInKitchen:@"Garbage Bags"],
                     [KitchenPreps prepsInKitchen:@"Hand Soap"],
                     [KitchenPreps prepsInKitchen:@"Paper Towels"],
                     [KitchenPreps prepsInKitchen:@"Paper/Plastic Plates"],
                     [KitchenPreps prepsInKitchen:@"Plastic Silverware"],
                     [KitchenPreps prepsInKitchen:@"Saranwrap"]];
    

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
    return self.kitchen.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KitchenCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell"];
               
    KitchenPreps *prepsInKitchen = self.kitchen[indexPath.row];
                             
    cell.kitchenLabel.text = prepsInKitchen.prepsInKitchen;
    
    cell.kitchenSwitch.on = prepsInKitchen.enabled;
    [cell.kitchenSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    return cell;
}

-(void) switchChanged:(UISwitch *) kitchenSwitch {
    
    for (KitchenCellController *cell in [self.tableView visibleCells]) {
        if (cell.kitchenSwitch == kitchenSwitch) {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
            KitchenPreps *preps = [self.kitchen objectAtIndex:indexPath.row];
            preps.enabled = kitchenSwitch.on;
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
