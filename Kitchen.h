//
//  Kitchen.h
//  StartPrepping
//
//  Created by Mac User on 7/30/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Kitchen;

@interface Kitchen : NSManagedObject

@property (nonatomic, retain) UNKNOWN_TYPE cardboardboxes;
@property (nonatomic, retain) UNKNOWN_TYPE cleaningrags;
@property (nonatomic, retain) UNKNOWN_TYPE dishsoap;
@property (nonatomic, retain) UNKNOWN_TYPE dishwashersoap;
@property (nonatomic, retain) UNKNOWN_TYPE foilwrap;
@property (nonatomic, retain) UNKNOWN_TYPE garbagebags;
@property (nonatomic, retain) UNKNOWN_TYPE handsoap;
@property (nonatomic, retain) UNKNOWN_TYPE plasticbags;
@property (nonatomic, retain) UNKNOWN_TYPE saranwrap;
@property (nonatomic, retain) Kitchen *relationship;
@property (nonatomic, retain) NSManagedObject *relationship1;

@end
