//
//  AdditionQuestion.h
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

-(instancetype)init;
-(NSInteger)answer;
-(NSTimeInterval) answerTime;
- (void) generateQuestion;
@end
