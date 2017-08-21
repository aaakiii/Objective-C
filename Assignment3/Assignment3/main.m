//
//  main.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-18.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger answer;
        ScoreKeeper *s1 = [[ScoreKeeper alloc]init];
        while(true){
            AdditionQuestion *addition = [[AdditionQuestion alloc]init];
            NSLog(@"%@", addition.question);
            InputHandler *i1 = [[InputHandler alloc]init];
            if([i1.string isEqual:@"quit"])break;
            answer = [i1.string integerValue];
            if(answer == addition.answer){
                s1.right++;
                NSLog(@"Right!!");
            }else{
                s1.wrong++;
                NSLog(@"Worng!!");
            }
            
        }
        NSLog(@"\n%@", [s1 score]);
    }
    return 0;
}
