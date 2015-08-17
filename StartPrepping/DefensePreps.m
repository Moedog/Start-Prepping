//
//  DefensePreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "DefensePreps.h"

@implementation DefensePreps

+ (instancetype)prepsInDefense: (NSString *)prepsInDefense enabled:(BOOL)enabled {
    DefensePreps *defense = [DefensePreps new];
    defense.prepsInDefense = prepsInDefense;
    defense.enabled = enabled;
    
    return defense;
}
@end
