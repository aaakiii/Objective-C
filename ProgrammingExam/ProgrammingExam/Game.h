//
//  Game.h
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
@property NSMutableArray *status1;
@property NSMutableArray *status2;
@property NSMutableArray *status3;

-(NSMutableArray*)getStatus1st:(NSInteger)column mark:(NSString*)mark;
-(NSMutableArray*)getStatus2nd:(NSInteger)column mark:(NSString*)mark;
-(NSMutableArray*)getStatus3rd:(NSInteger)column mark:(NSString*)mark;
-(void)showStatus:(NSMutableArray*)array;
@end
