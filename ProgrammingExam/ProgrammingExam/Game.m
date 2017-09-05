//
//  Game.m
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Game.h"

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        _status1 = [@[@"",@"",@""]mutableCopy];
        _status2 = [@[@"",@"",@""]mutableCopy];
        _status3 = [@[@"",@"",@""]mutableCopy];
        
    }
    return self;
}

-(NSMutableArray*)getStatus1st:(NSInteger)column mark:(NSString*)mark
{
    [_status1 replaceObjectAtIndex:column-1 withObject:mark];
    return _status1;
}

-(NSMutableArray*)getStatus2nd:(NSInteger)column mark:(NSString*)mark
{
    [_status2 replaceObjectAtIndex:column-1 withObject:mark];
    return _status2;
}

-(NSMutableArray*)getStatus3rd:(NSInteger)column mark:(NSString*)mark
{
    [_status3 replaceObjectAtIndex:column-1 withObject:mark];
    return _status3;
}

-(void)showStatus:(NSMutableArray*)array
{
    NSLog(@"+-----------+");
    for(NSString *a in array){
        NSLog(@"|%@|",a);
    }
}
@end
