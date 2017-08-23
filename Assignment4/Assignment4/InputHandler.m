//
//  InputHandler.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput {
    char mystr[255];
    fgets(mystr, 255, stdin);
    NSString *s = [NSString stringWithCString:mystr encoding:NSASCIIStringEncoding];
    
    return [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


@end
