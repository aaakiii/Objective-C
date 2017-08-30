//
//  CheeryManager.m
//  Assignment11
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager


-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Hehehe!! Here is %@", pizza);
    [self.deliveryService deliverPizza:pizza];
}


@end
