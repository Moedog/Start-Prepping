//
//  BathroomPreps.h
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BathroomPreps : NSObject

@property (strong) NSString *prepsInBathroom;
@property (assign) BOOL enabled;

+ (instancetype)prepsInBathroom: (NSString *)prepsInBathroom enabled:(BOOL)enabled;

@end
