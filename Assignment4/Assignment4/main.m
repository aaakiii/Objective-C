//
//  main.m
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        InputCollector = [[InputCollector alloc]init];
        NSLog(@"What would you like to do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application ");
    }
    return 0;
}
