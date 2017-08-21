//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

NSString * question;
NSInteger answer;
-(instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger n1 = arc4random_uniform(100);
        NSInteger n2 = arc4random_uniform(100);
        _answer = n1+n2;
        _question = [NSString stringWithFormat: @"%d + %d?", (int)n1, (int)n2];
    }
    return self;

}


@end
