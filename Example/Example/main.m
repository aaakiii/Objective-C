//
//  main.m
//  Example
//
//  Created by 岡田暁 on 2017-08-23.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //Convienience methods
        //Doing same things
        NSDate *date = [[NSDate alloc]init];
        NSDate *date2 = [NSDate date];
        
        NSArray *arr = [[NSArray alloc]init];
        NSArray *arr2 = [NSArray array];
        
        NSMutableArray *mutArry1 = [[NSMutableArray alloc]init];
        NSMutableArray *mutArry2 = [NSMutableArray array];
        
        NSNumber *num = [NSNumber numberWithDouble:10.1];
        
        NSDictionary *dic1 = [[NSDictionary alloc]init];
        NSDictionary *dic2 = [NSDictionary dictionary];
        
        [mutArry1 addObject:@"Hello"];
        [mutArry2 addObject:@"Hello"];
        
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
