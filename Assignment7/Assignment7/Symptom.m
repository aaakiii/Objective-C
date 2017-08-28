//
//  Sympton.m
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Symptom.h"

@implementation Symptom

+ (instancetype) newWithTitle: (NSString *) title {
    Symptom *instance = [Symptom new];
    instance.title = title;
    return instance;
}

- (instancetype) init {
    self.medicines = [NSMutableSet set];
    return self;
}

@end
