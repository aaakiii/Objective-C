//
//  main.m
//  Assignment11
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "HateAnchoviesManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        HateAnchoviesManager *hateAnchovies = [HateAnchoviesManager new];
        CheeryManager *cheery = [CheeryManager new];
        while (TRUE) {
            NSLog(@"Please pick your pizza size and toppings(tomato, sauce, mozzeralla, cheese, pepperonni, anchovi):");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            
            NSString *keyword = commandWords[0];
            
            Pizza *pizza;
            PizzaSize size;
            NSArray *toppings;
            if ([keyword isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            }
            else {
                // And then send some message to the kitchen...
                size = [Pizza sizeFromString:keyword];
                toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                
                NSLog(@"Please choose Manager\n 1.HateAnchoviesManager\n 2.CheeryManager");
                char input[5];
                fgets(input, 5, stdin);
                NSString *inputNumber = [[NSString alloc] initWithUTF8String:input];
                inputNumber = [inputNumber stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                if([inputNumber isEqualToString:@"1"]){
                    restaurantKitchen.delegate = hateAnchovies;
                }else if([inputNumber isEqualToString:@"2"]){
                    restaurantKitchen.delegate = cheery;
                }
                pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                if(pizza == NULL){
                    NSLog(@"OH NO, NO PIZZA!!!");
                }
            }

        }
        
    }
    return 0;
}
