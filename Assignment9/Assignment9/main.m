//
//  main.m
//  Assignment9
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "BaoCook.h"
#import "ShortBreadCook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        BaoCook *bao = [BaoCook new];
        ShortBreadCook *bread = [ShortBreadCook new];
        
        
        // set truckA and truckB's delegate to your new instance.
        
        truckA.delegate = bao;
        truckB.delegate = bread;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
