//
//  Player.h
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *player1;
@property NSString *player2;
@property NSString *random;
-(NSString*)getMark:(NSInteger)player;
@property NSInteger counter;
-(NSInteger)getPlayer;
@end
