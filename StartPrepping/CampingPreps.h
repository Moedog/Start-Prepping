//
//  CampingPreps.h
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CampingPreps : NSObject

@property (strong) NSString *prepsInCamping;
@property (assign) BOOL enabled;

+ (instancetype)prepsInCamping: (NSString *)prepsInCamping;

@end
