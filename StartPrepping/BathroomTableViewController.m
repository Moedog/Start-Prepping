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

@property (assign, nonatomic) BOOL *antifungalItchCream;
@property (assign, nonatomic) BOOL *antibacterialOintment;
@property (assign, nonatomic) BOOL *birthControl;
@property (assign, nonatomic) BOOL *bugSpray;
@property (assign, nonatomic) BOOL *coldFluMedicine;
@property (assign, nonatomic) BOOL *coughSyrup;
@property (assign, nonatomic) BOOL *deodorant;
@property (assign, nonatomic) BOOL *extraTowels;
@property (assign, nonatomic) BOOL *feminineHygiene;
@property (assign, nonatomic) BOOL *firstAidKit;
@property (assign, nonatomic) BOOL *guazePads;
@property (assign, nonatomic) BOOL *handSoap;
@property (assign, nonatomic) BOOL *hydrogenPeroxide;


@property (assign, nonatomic) BOOL *ibuprophen;
@property (assign, nonatomic) BOOL *lotion;
@property (assign, nonatomic) BOOL *mouthwash;
@property (assign, nonatomic) BOOL *razors;
@property (assign, nonatomic) BOOL *rubbingAlcohol;
@property (assign, nonatomic) BOOL *shampooBodyWash;
@property (assign, nonatomic) BOOL *shavingCream;
@property (assign, nonatomic) BOOL *soreThroatSpray;
@property (assign, nonatomic) BOOL *sunscreenLotion;
@property (assign, nonatomic) BOOL *toiletPaper;
@property (assign, nonatomic) BOOL *toothbrushes;
@property (assign, nonatomic) BOOL *toothpaste;
@property (assign, nonatomic) BOOL *vitamins;

@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation BathroomTableViewController
- (IBAction)bathroomSave:(id)sender {
    
    NSString *text = self.textView.text;
    
    [[NSUserDefaults standardUserDefaults] setValue:text forKey:@"bathroomNotes"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"bathroomNotes"]) {
        self.textView.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"bathroomNotes"];
    } else {
        self.textView.text = @"TYPE NOTES HERE";
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.bathroom = @[
                      [BathroomPreps prepsInBathroom:@"Antifungal/Itch Cream"],
                      [BathroomPreps prepsInBathroom:@"Antibacterial Ointment"],
                      [BathroomPreps prepsInBathroom:@"Birth Control"],
                      [BathroomPreps prepsInBathroom:@"Bug Spray"],
                      [BathroomPreps prepsInBathroom:@"Cold/Flu Medicine"],
                      [BathroomPreps prepsInBathroom:@"Cough Syrup"],
                      [BathroomPreps prepsInBathroom:@"Deodorant"],
                      [BathroomPreps prepsInBathroom:@"Extra Towels"],
                      
                      [BathroomPreps prepsInBathroom:@"Feminine Hygiene"],
                      [BathroomPreps prepsInBathroom:@"First Aid Kit"],
                      [BathroomPreps prepsInBathroom:@"Guaze Pads"],
                      [BathroomPreps prepsInBathroom:@"Hand Soap"],
                      [BathroomPreps prepsInBathroom:@"Hydrogen Peroxide"],
                      [BathroomPreps prepsInBathroom:@"Ibuprophen"],
                      [BathroomPreps prepsInBathroom:@"Lotion"],
                      [BathroomPreps prepsInBathroom:@"Mouthwash"],
                      [BathroomPreps prepsInBathroom:@"Razors"],
                      [BathroomPreps prepsInBathroom:@"Rubbing Alcohol"],
                      [BathroomPreps prepsInBathroom:@"Shampoo/Body Wash"],
                      [BathroomPreps prepsInBathroom:@"Shaving Cream"],
                      [BathroomPreps prepsInBathroom:@"Sore Throat Spray"],
                      [BathroomPreps prepsInBathroom:@"Sunscreen Lotion"],
                      [BathroomPreps prepsInBathroom:@"Toilet Paper"],
                      [BathroomPreps prepsInBathroom:@"Toothbrushes"],
                      [BathroomPreps prepsInBathroom:@"Toothpaste"],
                      [BathroomPreps prepsInBathroom:@"Vitamins"]];
    
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
    return self.bathroom.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BathroomCellController *cell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell" forIndexPath:indexPath];
    
    BathroomPreps *prepsInBathroom = self.bathroom[indexPath.row];
    
    cell.bathroomLabel.text = prepsInBathroom.prepsInBathroom;
    
    cell.bathroomSwitch.on = prepsInBathroom.enabled;
    [cell.bathroomSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    return cell;
}

-(void) switchChanged:(UISwitch *) bathroomSwitch {
    
    for (BathroomCellController *cell in [self.tableView visibleCells]) {
        if (cell.bathroomSwitch == bathroomSwitch) {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
            BathroomPreps *preps = [self.bathroom objectAtIndex:indexPath.row];
            preps.enabled = bathroomSwitch.on;
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
