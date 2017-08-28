//
//  PaymentGateqa.h
//  Assignment10
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger) amount;

@end

@interface PaymentGateway : NSObject

@property id<PaymentDelegate> delegate;

@end
