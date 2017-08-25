//
//  InputHandler.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
NSString *string;
-(instancetype)init
{
    self = [super init];
    if (self) {
        char inputStr[255];
        fgets(inputStr, 255, stdin);
        NSString *s = [NSString stringWithCString:inputStr encoding:NSASCIIStringEncoding];
        _string = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    }
    return self;

}

@end
