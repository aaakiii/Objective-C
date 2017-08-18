//
//  main.m
//  Assignment2
//
//  Created by 岡田暁 on 2017-08-17.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
   
        Box *box1 = [[Box alloc]init];
        [box1 setWidth:3.0];
        [box1 setHeight:3.0];
        [box1 setLength:2.0];
        [box1 setVolume];
        
       
        NSLog(@"width :%f, height :%f, length : %f", [box1 width],[box1 height],[box1 length]);
        NSLog(@"Volume is %f", [box1 volume]);
        
       
   
    }
    return 0;
}
