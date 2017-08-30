//
//  DeriveryService.m
//  Assignment12
//
//  Created by 岡田暁 on 2017-08-29.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzas = [NSMutableArray new];
    }
    return self;
}

-(void) deliverPizza:(Pizza *)pizza
{
    [_pizzas addObject:pizza];
}
@end
