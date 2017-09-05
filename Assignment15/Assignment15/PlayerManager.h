//
//  PlayerManager.h
//  Assignment15
//
//  Created by 岡田暁 on 2017-08-31.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;
- (void) createPlayers:(NSInteger) playerNum;
- (void) roll:(Player*) player;
- (Player*) currentPlayer: (NSInteger) currentIndex;
- (void) gameOver;
@end
