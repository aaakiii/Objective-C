//
//  Assignment1.m
//  Objective-C
//
//  Created by 岡田暁 on 2017-08-16.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char inputChars[255];
        char operationChars[10];
        
        while(true){
            printf("Input operation number\n 1.Uppercase\n 2.Lowercase\n 3.Numberize\n 4.Canadianize\n 5.Respond\n 6.De-Space-It\n");
            fgets(operationChars, 10, stdin);
            NSString *operationString = [NSString stringWithUTF8String:operationChars];
            operationString = [operationString substringToIndex:[operationString length] - 1];
            NSInteger operationInt = [operationString integerValue];
            if(operationInt > 6){
                printf("Pls enter only 1-6\n");
            }else{
                printf("Input a string\n");
                fgets(inputChars, 255, stdin);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                
                if([operationString isEqualToString: @"1"]){
                    NSString *inputString = [[NSString stringWithUTF8String:inputChars]uppercaseString];
                    NSLog(@"Output is: %@\n", inputString);
                }else if([operationString isEqualToString: @"2"]){
                    NSString *inputString = [[NSString stringWithUTF8String:inputChars]lowercaseString];
                    NSLog(@"Output is: %@\n", inputString);
                }else if([operationString isEqualToString: @"3"]){
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSInteger myNumber = [inputString integerValue];
                    NSLog(@"Output is: %zd\n", myNumber);
                }else if([operationString isEqualToString: @"4"]){
                    NSString *outputString = [inputString stringByAppendingString:@",eh?"];
                    NSLog(@"Output is: %@\n", outputString);
                }else if([operationString isEqualToString: @"5"]){
                    if ([inputString length] > 0) {
                        inputString = [inputString substringToIndex:[inputString length] - 1];
                        if([inputString hasSuffix:@"?"]){
                            NSLog(@"I don't know.");
                        }else if([inputString hasSuffix:@"!"]){
                            NSLog(@"Whoa, calm down!");
                        }
                    }
                }else if([operationString isEqualToString: @"6"]){
                    NSString *escapedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Output is: %@\n", escapedString);
                }
            }
        }
        
    }
    return 0;
}
