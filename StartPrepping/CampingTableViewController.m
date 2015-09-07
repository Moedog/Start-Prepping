//
//  CampingTableViewController.m
//  StartPrepping
//
//  Created by Mac User on 8/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CampingTableViewController.h"
#import "CampingCellController.h"
#import "CampingPreps.h"

@interface CampingTableViewController ()
@property (strong, nonatomic) NSArray *camping;


@property (assign, nonatomic) BOOL *appropriateFootwear;
@property (assign, nonatomic) BOOL *axeOrHatchet;
@property (assign, nonatomic) BOOL *blankets;
@property (assign, nonatomic) BOOL *campLantern;
@property (assign, nonatomic) BOOL *campStove;
@property (assign, nonatomic) BOOL *canteen;
@property (assign, nonatomic) BOOL *compass;
@property (assign, nonatomic) BOOL *cookKit;
@property (assign, nonatomic) BOOL *cooler;
@property (assign, nonatomic) BOOL *fireExtinguisher;
@property (assign, nonatomic) BOOL *firestarters;
@property (assign, nonatomic) BOOL *fishingOrHuntingEquipment;
@property (assign, nonatomic) BOOL *firstAidKit;
@property (assign, nonatomic) BOOL *flashlights;

@property (assign, nonatomic) BOOL *hikingOrBugoutPack;
@property (assign, nonatomic) BOOL *lawnchairs;
@property (assign, nonatomic) BOOL *matches;
@property (assign, nonatomic) BOOL *propane;
@property (assign, nonatomic) BOOL *raincoat;
@property (assign, nonatomic) BOOL *rope;
@property (assign, nonatomic) BOOL *seasonalClothing;
@property (assign, nonatomic) BOOL *singleBurnerStove;
@property (assign, nonatomic) BOOL *sleepingBags;
@property (assign, nonatomic) BOOL *smallBungeeCords;
@property (assign, nonatomic) BOOL *survivalKnife;
@property (assign, nonatomic) BOOL *survivalRadio;
@property (assign, nonatomic) BOOL *tarps;
@property (assign, nonatomic) BOOL *tents;
@property (assign, nonatomic) BOOL *table;
@property (assign, nonatomic) BOOL *toiletPaper;
@property (assign, nonatomic) BOOL *tomahawk;
@property (assign, nonatomic) BOOL *waterContainers;
@property (assign, nonatomic) BOOL *waterPurification;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation CampingTableViewController
- (IBAction)campingSave:(id)sender {
    
    NSString *text = self.textView.text;
    
    [[NSUserDefaults standardUserDefaults] setValue:text forKey:@"Type Notes"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.appropriateFootwear = YES;
//    self.axeOrHatchet = YES;
//    self.blankets = YES;
//    self.campLantern = YES;
//    self.campStove = YES;
//    self.canteen = YES;
//    self.compass = YES;
//    self.cookKit = YES;
//    self.cooler = YES;
//    self.fireExtinguisher = YES;
//    self.firestarters = YES;
//    self.fishingOrHuntingEquipment = YES;
//    self.firstAidKit = YES;
//    self.flashlights = YES;
//    self.hikingOrBugoutPack = YES;
//    self.lawnchairs = YES;
//    self.matches = YES;
//    self.propane = YES;
//    self.raincoat = YES;
//    self.rope = YES;
//    self.seasonalClothing = YES;
//    self.singleBurnerStove = YES;
//    self.sleepingBags = YES;
//    self.smallBungeeCords = YES;
//    self.survivalKnife = YES;
//    self.survivalRadio = YES;
//    self.tarps = YES;
//    self.tents = YES;
//    self.table = YES;
//    self.toiletPaper = YES;
//    self.tomahawk = YES;
//    self.waterContainers = YES;
//    self.waterPurification = YES;
    
    
    self.textView.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"Type Notes"];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.camping = @[
                     
                     [CampingPreps prepsInCamping:@"Appropriate Footware"],
                     [CampingPreps prepsInCamping:@"Axe/Hatchet"],
                     [CampingPreps prepsInCamping:@"Blankets"],
                     [CampingPreps prepsInCamping:@"Camp Lantern"],
                     [CampingPreps prepsInCamping:@"Camp Stove"],
                     [CampingPreps prepsInCamping:@"Canteen"],
                     [CampingPreps prepsInCamping:@"Compass"],
                     [CampingPreps prepsInCamping:@"Cook Kit"],
                     [CampingPreps prepsInCamping:@"Cooler"],
                     [CampingPreps prepsInCamping:@"Fire Extinguisher"],
                     [CampingPreps prepsInCamping:@"Firestarters"],
                     [CampingPreps prepsInCamping:@"Fishing/Hunting Equipment"],
                     
                     
                     [CampingPreps prepsInCamping:@"First Aid Kit"],
                     [CampingPreps prepsInCamping:@"Flashlights"],
                     [CampingPreps prepsInCamping:@"Hiking or Bugout Pack"],
                     [CampingPreps prepsInCamping:@"Lawn Chairs"],
                     [CampingPreps prepsInCamping:@"Matches"],
                     [CampingPreps prepsInCamping:@"Propane"],
                     [CampingPreps prepsInCamping:@"Raincoat"],
                     [CampingPreps prepsInCamping:@"Rope"],
                     [CampingPreps prepsInCamping:@"Seasonal Clothing"],
                     [CampingPreps prepsInCamping:@"Single Burner Stove"],
                     [CampingPreps prepsInCamping:@"Sleeping Bags"],
                     [CampingPreps prepsInCamping:@"Small Bungee Cords"],
                     [CampingPreps prepsInCamping:@"Survival Knife"],
                     [CampingPreps prepsInCamping:@"Survival Radio"],
                     [CampingPreps prepsInCamping:@"Tarps"],
                     [CampingPreps prepsInCamping:@"Tents"],
                     [CampingPreps prepsInCamping:@"Table"],
                     [CampingPreps prepsInCamping:@"Toilet Paper"],
                     [CampingPreps prepsInCamping:@"Tomahawk"],
                     [CampingPreps prepsInCamping:@"Water Containers"],
                     [CampingPreps prepsInCamping:@"Water Purification"]];
    
    
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
    return self.camping.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CampingCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
    
    CampingPreps *prepsInCamping = self.camping[indexPath.row];
    
    cell.campingLabel.text = prepsInCamping.prepsInCamping;
    
    cell.campingSwitch.on = prepsInCamping.enabled;
    [cell.campingSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    return cell;
}

-(void) switchChanged:(UISwitch *) campingSwitch {
    
    for (CampingCellController *cell in [self.tableView visibleCells]) {
        if (cell.campingSwitch == campingSwitch) {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
            CampingPreps *preps = [self.camping objectAtIndex:indexPath.row];
            preps.enabled = campingSwitch.on;
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
