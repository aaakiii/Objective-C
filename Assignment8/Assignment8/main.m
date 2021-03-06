//
//  main.m
//  Assignment8
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
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
            if ([keyword isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            }
            else {
                // And then send some message to the kitchen...
                PizzaSize size = [Pizza sizeFromString:keyword];
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                pizza = [[Pizza alloc] initWithSize:size toppings:toppings];
            }
            
            NSLog(@"Here is a %@.", pizza);
        }
        
    }
    return 0;
}

