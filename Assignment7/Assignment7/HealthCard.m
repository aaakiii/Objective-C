//
//  HealthCard.m
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "HealthCard.h"

@implementation HealthCard
+ (instancetype) newValid{
    HealthCard *instance = [HealthCard new];
    instance.valid = YES;
    return instance;
}

+ (instancetype) newInvalid{
    HealthCard *instance = [HealthCard new];
    instance.valid = NO;
    return instance;
}

- (instancetype) init {
    return self;
}
@end
