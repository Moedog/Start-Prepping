//
//  DefensePreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "DefensePreps.h"

@implementation DefensePreps

+ (instancetype)prepsInDefense: (NSString *)prepsInDefense {
    DefensePreps *defense = [DefensePreps new];
    defense.prepsInDefense = prepsInDefense;

    return defense;

}

- (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:self.prepsInDefense];
}

- (BOOL)enabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:self.prepsInDefense];
    
}

@end
