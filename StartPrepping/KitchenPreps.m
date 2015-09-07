//
//  KitchenPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "KitchenPreps.h"

@implementation KitchenPreps

+ (instancetype)prepsInKitchen: (NSString *)prepsInKitchen {
    KitchenPreps *kitchen = [KitchenPreps new];
    kitchen.prepsInKitchen = prepsInKitchen;
    
    return kitchen;
    
}

- (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:self.prepsInKitchen];
}

- (BOOL)enabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:self.prepsInKitchen];
}

@end
