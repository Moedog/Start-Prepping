//
//  BathroomPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BathroomPreps.h"

@implementation BathroomPreps

+ (instancetype)prepsInBathroom: (NSString *)prepsInBathroom enabled:(BOOL)enabled {
    BathroomPreps *bathroom = [BathroomPreps new];
    bathroom.prepsInBathroom = prepsInBathroom;
    bathroom.enabled = enabled;
    
    return bathroom;
    
    
}

@end
