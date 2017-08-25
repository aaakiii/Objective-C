//
//  DivisionQuestion.m
//  Assignment5
//
//  Created by 岡田暁 on 2017-08-24.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "DivisionQuestion.h"
#import "Question.h"

@implementation DivisionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat: @"%ld / %ld?", (long)super.leftValue, (long)super.rightValue];
}
@end
