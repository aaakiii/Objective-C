//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Question.h"

@implementation Question


-(instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
     
    }
    return self;

}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime
{
    return [_endTime timeIntervalSinceDate: _startTime];
}

- (void) generateQuestion{


}

@end
