//
//  AmazonPaymentService.m
//  Assignment10
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Amazon processed amount $%ld\n", (long)amount);
}
@end
