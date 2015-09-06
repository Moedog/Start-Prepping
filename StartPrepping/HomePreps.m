//
//  HomePreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "HomePreps.h"

@implementation HomePreps

+ (instancetype)prepsInHome: (NSString *)prepsInHome {
    HomePreps *home = [HomePreps new];
    home.prepsInHome = prepsInHome;
    
    return home;
    
}

- (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults]setBool:enabled forKey:self.prepsInHome];
}

- (BOOL)enabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:self.prepsInHome];
}

@end
