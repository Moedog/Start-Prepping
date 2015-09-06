//
//  CampingPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CampingPreps.h"

@implementation CampingPreps


+ (instancetype)prepsInCamping: (NSString *)prepsInCamping {
    CampingPreps *camping = [CampingPreps new];
    camping.prepsInCamping = prepsInCamping;
    
    return camping;
}

- (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults]
     setBool:enabled forKey:self.prepsInCamping];
}

- (BOOL)enabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:self.prepsInCamping];
}


@end
