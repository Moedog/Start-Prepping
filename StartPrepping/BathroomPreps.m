//
//  BathroomPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BathroomPreps.h"

@implementation BathroomPreps

+ (instancetype)prepsInBathroom: (NSString *)prepsInBathroom {
    BathroomPreps *bathroom = [BathroomPreps new];
    bathroom.prepsInBathroom = prepsInBathroom;
    
    return bathroom;
    
}

- (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:self.prepsInBathroom];
}

- (BOOL)enabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:self.prepsInBathroom];

}

@end
