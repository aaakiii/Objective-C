//
//  QuestionFactory.m
//  Assignment5
//
//  Created by 岡田暁 on 2017-08-23.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@implementation QuestionFactory

- (Question*)generateRandomQuestion{
    NSArray *questionClass = @[
                                @"AdditionQuestion",
                                @"SubtractionQuestion",
                                @"MultiplicationQuestion",
                                @"DivisionQuestion"
                                ];
    NSString *class = questionClass[arc4random_uniform((int)questionClass.count)];
    Question *question = [NSClassFromString(class) new];
    
    return question;
}
@end
