//
//  InputCollector.m
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "InputCollector.h"
#import "InputHandler.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(@"%@", promptString);
    NSString *input =[InputHandler getUserInput];
    
    return input;
}

@end
