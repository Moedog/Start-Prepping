//
//  Kitchen.h
//  StartPrepping
//
//  Created by Mac User on 8/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Kitchen : NSManagedObject

@property (nonatomic, retain) NSNumber * cardboardboxes;
@property (nonatomic, retain) NSNumber * cleaningrags;
@property (nonatomic, retain) NSNumber * dishsoap;
@property (nonatomic, retain) NSNumber * dishwashersoap;
@property (nonatomic, retain) NSNumber * foilwrap;
@property (nonatomic, retain) NSNumber * garbagebags;
@property (nonatomic, retain) NSNumber * handsoap;
@property (nonatomic, retain) NSNumber * plasticbags;
@property (nonatomic, retain) NSNumber * saranwrap;

@end
