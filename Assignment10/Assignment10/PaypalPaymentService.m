//
//  PaypalPaymentService.m
//  Assignment10
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Paypal processed amount $%ld\n", (long)amount);
}
@end
