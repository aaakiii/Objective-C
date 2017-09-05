//
//  Judge.m
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Judge.h"

@implementation Judge

- (instancetype)init
{
    self = [super init];
    if (self) {
        _counter1 = 0;
        _counter2 = 0;
    }
    return self;
}

-(NSString *)getResult
{
    Game *game = [Game new];
    NSString *winner;
    for(NSString *a in game.status1){
        if([a isEqualToString:@"●"]){
            _counter1++;
        }else if([a isEqualToString:@"×"]){
            _counter2++;
        }
    }
    if(_counter1 >= 3){
        winner = @"player1";
    }else if(_counter2 >= 3){
        winner = @"player2";
    }else{
        return NULL;
    }
    return winner;
}



@end
