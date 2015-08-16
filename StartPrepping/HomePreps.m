//
//  HomePreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "HomePreps.h"

@implementation HomePreps

+ (instancetype)prepsInHome: (NSString *)prepsInHome enabled:(BOOL)enabled {
    HomePreps *home = [HomePreps new];
    home.prepsInHome = prepsInHome;
    home.enabled = enabled;
    
    return home;
    
}

@end
