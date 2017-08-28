//
//  Person.m
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//


#import "Person.h"

@implementation Person

+ (instancetype) newWithName: (NSString *) name {
    Person *instance = [self new];
    instance.name = name;
    return instance;
}

- (void) say: (NSString *) message {
    printf("%s: %s\n", self.name.UTF8String, message.UTF8String);
}

@end
