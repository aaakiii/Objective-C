//
//  Judge.h
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "Player.h"

@interface Judge : NSObject

@property NSInteger counter1;
@property NSInteger counter2;
-(NSString *)getResult;

@end
