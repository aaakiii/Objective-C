//
//  DeriveryService.h
//  Assignment12
//
//  Created by 岡田暁 on 2017-08-29.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
#import "Pizza.h"

@interface DeliveryService : NSObject

@property (weak) DeliveryCar *car;
@property NSMutableArray *pizzas;

-(void)deliverPizza:(Pizza *)pizza;

@end
