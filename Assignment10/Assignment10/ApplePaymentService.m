//
//  ApplePaymentService.m
//  Assignment10
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
- (void) processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Apple processed amount $%ld\n", (long)amount);
}
@end
