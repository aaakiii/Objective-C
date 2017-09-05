//
//  Player.m
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _counter = 1;
    }
    return self;
}
-(NSString*)getMark:(NSInteger)player
{
    if(player == 1){
        return @"●";
    }
    else
        return @"×";
    
}

-(NSInteger)getPlayer
{
    if(_counter % 2 == 0){
        _counter++;
        return 2;

    }else{
        _counter++;
        return 1;
    }
}

@end
