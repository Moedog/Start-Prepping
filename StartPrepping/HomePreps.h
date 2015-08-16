//
//  HomePreps.h
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomePreps : NSObject

@property (strong) NSString *prepsInHome;
@property (assign) BOOL enabled;

+ (instancetype)prepsInHome: (NSString *)prepsInHome enabled:(BOOL)enabled;

@end
