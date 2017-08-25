//
//  QuestionManager.m
//  Assignment5
//
//  Created by 岡田暁 on 2017-08-23.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if(self){
        _questions = [NSMutableArray array];
    }
    return self;
}

- (void) addQuestion:(Question *) question
{
    [_questions addObject:question];
}


- (NSString*)timeOutput{
    float total = 0;
    for(Question *question in _questions){
        total += [question answerTime];
    }
   
     NSString* str = [NSString stringWithFormat: @"Total Time: %ds,  Average time: %lus?", (int) total, (int) total / _questions.count];
    return str;
}

@end
