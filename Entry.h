//
//  Entry.h
//  StartPrepping
//
//  Created by Mac User on 8/18/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

static NSString * const EnterNotes = @"Notes";

@interface Entry : NSManagedObject

@property (nonatomic, retain) NSString * notes;

@end
