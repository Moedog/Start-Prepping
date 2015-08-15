//
//  KitchenPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "KitchenPreps.h"

@implementation KitchenPreps

+ (instancetype)prepsInKitchen: (NSString *)prepsInKitchen enabled:(BOOL)enabled {
    KitchenPreps *kitchen = [KitchenPreps new];
    kitchen.prepsInKitchen = prepsInKitchen;
    kitchen.enabled = enabled;
    
    return kitchen;
    
    
}

@end
