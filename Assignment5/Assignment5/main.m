//
//  main.m
//  Assignment5
//
//  Created by 岡田暁 on 2017-08-23.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *right = @"Right\n";
        NSString *wrong = @"Wrong\n";
        
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        ScoreKeeper *s1 = [ScoreKeeper new];
        
        NSInteger userAnswer;
        Question *addition = [Question new];
        while(YES){
            addition = [questionFactory generateRandomQuestion];
            [questionManager addQuestion: addition];
            NSLog(@"%@", addition.question);
            [addition answer];
            InputHandler *i1 = [InputHandler new];
            if([i1.string isEqual:@"quit"])break;
            userAnswer = [i1.string integerValue];
            if(userAnswer == addition.answer){
                s1.right++;
                NSLog(@"%@",right);
            }else{
                s1.wrong++;
                NSLog(@"%@",wrong);
            }
          
            
        }
        
        NSTimeInterval totalTime = [addition answerTime];
        NSLog(@"Time: %f secs",totalTime);
        NSLog(@"%@",[questionManager timeOutput]);
       
        NSLog(@"\n%@", [s1 score]);
        
    }
    return 0;
}
