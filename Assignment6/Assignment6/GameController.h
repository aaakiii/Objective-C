//
//  GameController.h
//  Assignment6
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *dice;
@property NSNumber *contents;
-(NSInteger)holdDie:(NSInteger)idx arry:(NSMutableArray *) arry;
-(NSMutableArray *)heldDice:(NSInteger)idx arry:(NSMutableArray *) arry;
- (void) resetDice :(NSMutableArray *) arry;
- (NSInteger) countScore:(NSMutableArray *)heldDice;
@end
