//
//  CampingPreps.m
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "CampingPreps.h"

@implementation CampingPreps


+ (instancetype)prepsInCamping: (NSString *)prepsInCamping enabled:(BOOL)enabled {
    CampingPreps *camping = [CampingPreps new];
    camping.prepsInCamping = prepsInCamping;
    camping.enabled = enabled;
    
    return camping;
}



@end
