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

@property (assign, nonatomic) BOOL *batteries;
@property (assign, nonatomic) BOOL *boardGames;
@property (assign, nonatomic) BOOL *candles;
@property (assign, nonatomic) BOOL *ductTape;
@property (assign, nonatomic) BOOL *electricFans;
@property (assign, nonatomic) BOOL *extensionCords;
@property (assign, nonatomic) BOOL *extraBlankets;
@property (assign, nonatomic) BOOL *fireExtinguisher;
@property (assign, nonatomic) BOOL *fiveGallonWaterContainers;
@property (assign, nonatomic) BOOL *fiveGallonGasCans;
@property (assign, nonatomic) BOOL *gardenSeeds;
@property (assign, nonatomic) BOOL *gardenTools;
@property (assign, nonatomic) BOOL *generator;

@property (assign, nonatomic) BOOL *hamSatelliteRadio;
@property (assign, nonatomic) BOOL *lightbulbs;
@property (assign, nonatomic) BOOL *playingCards;
@property (assign, nonatomic) BOOL *portableACUnit;
@property (assign, nonatomic) BOOL *portableWaterHeater;
@property (assign, nonatomic) BOOL *powerTools;
@property (assign, nonatomic) BOOL *propaneTanks;
@property (assign, nonatomic) BOOL *sewingKit;
@property (assign, nonatomic) BOOL *spaceHeater;
@property (assign, nonatomic) BOOL *spareCash;
@property (assign, nonatomic) BOOL *tissues;
@property (assign, nonatomic) BOOL *toolKit;
@property (assign, nonatomic) BOOL *workGloves;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation HomePrepsTableViewController
- (IBAction)saveHome:(id)sender {

NSString *text = self.textView.text;

[[NSUserDefaults standardUserDefaults] setValue:text forKey:@"homePrepsNotes"];

[self.navigationController popViewControllerAnimated:YES];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"homePrepsNotes"]) {
        self.textView.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"homePrepsNotes"];
    } else {
        self.textView.text = @"TYPE NOTES HERE";
    }
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.home = @[
                  
                      [HomePreps prepsInHome:@"Batteries"],
                      [HomePreps prepsInHome:@"Board Games"],
                      [HomePreps prepsInHome:@"Candles"],
                      [HomePreps prepsInHome:@"Duct Tape"],
                      [HomePreps prepsInHome:@"Electric Fans"],
                      [HomePreps prepsInHome:@"Extension Cords"],
                      [HomePreps prepsInHome:@"Extra Blankets"],
                      [HomePreps prepsInHome:@"Fire Extinguisher"],
                      [HomePreps prepsInHome:@"Five Gallon Water Containers"],
                      [HomePreps prepsInHome:@"Five Gallon Gas Cans"],
                      
                      
                      [HomePreps prepsInHome:@"Garden Seeds"],
                      [HomePreps prepsInHome:@"Garden Tools"],
                      [HomePreps prepsInHome:@"Generator"],
                      [HomePreps prepsInHome:@"Ham/Satellite Radio"],
                      [HomePreps prepsInHome:@"Lightbulbs"],
                      [HomePreps prepsInHome:@"Playing Cards"],
                      [HomePreps prepsInHome:@"Portable AC Unit"],
                      [HomePreps prepsInHome:@"Portable Water Heater"],
                      [HomePreps prepsInHome:@"Power Tools"],
                      [HomePreps prepsInHome:@"Propane Tanks"],
                      [HomePreps prepsInHome:@"Sewing Kit"],
                      [HomePreps prepsInHome:@"Space Heater"],
                      [HomePreps prepsInHome:@"Spare Cash ($500 min.)"],
                      [HomePreps prepsInHome:@"Stationary"],
                      [HomePreps prepsInHome:@"Tissues"],
                      [HomePreps prepsInHome:@"Tool Kit"],
                      [HomePreps prepsInHome:@"Work Gloves"]];
    
    
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
    return self.home.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomePrepsCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell"];
    
    HomePreps *prepsInHome = self.home[indexPath.row];
    
    cell.homeLabel.text = prepsInHome.prepsInHome;
    
    cell.homeSwitch.on = prepsInHome.enabled;
    [cell.homeSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    return cell;
}

-(void) switchChanged:(UISwitch *) homeSwitch {
    
    for (HomePrepsCellController *cell in [self.tableView visibleCells])  {
        if (cell.homeSwitch == homeSwitch) {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
            HomePreps *preps = [self.home objectAtIndex:indexPath.row];
            preps.enabled = homeSwitch.on;
            
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
