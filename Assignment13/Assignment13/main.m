//
//  main.m
//  Assignment13
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true){
        NSLog(@"Enter the word");
        InputHandler *input = [InputHandler new];
        if([input.string isEqual:@"quit"]){
            break;
        }
        NSString *result= [NSString changePigLatinFromString:input.string];
        NSLog(@"%@", result);
            
        }
    }
    return 0;
}

