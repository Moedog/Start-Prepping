//
//  KitchenPreps.h
//  StartPrepping
//
//  Created by Mac User on 8/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KitchenPreps : NSObject

@property (strong) NSString *prepsInKitchen;
@property (assign) BOOL enabled;

+ (instancetype)prepsInKitchen: (NSString *)prepsInKitchen;

@end







