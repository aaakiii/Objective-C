//
//  HateAnchoviesManager.m
//  Assignment11
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "HateAnchoviesManager.h"

@implementation HateAnchoviesManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    if([toppings containsObject:@"anchovi"]){
        return NO;
    }
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"%@",pizza);
}

@end
