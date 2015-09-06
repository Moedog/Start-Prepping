//
//  DefensePreps.h
//  StartPrepping
//
//  Created by Mac User on 8/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DefensePreps : NSObject

@property (strong) NSString *prepsInDefense;
@property (assign) BOOL enabled;

+ (instancetype)prepsInDefense: (NSString *)prepsInDefense;

@end



