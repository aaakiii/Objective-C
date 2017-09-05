//
//  PlayerManager.m
//  Assignment15
//
//  Created by 岡田暁 on 2017-08-31.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex = 0;
    }
    return self;
}

- (void) createPlayers:(NSInteger) playerNum
{
    Player *player = [Player new];
    for(int i= 1; i <= playerNum; i++){
        player.name = [NSString stringWithFormat:@"player%d", i+1];
        [_players addObject:player];
    }
}

- (void) roll:(Player*) player
{
    [player roll];
    _currentIndex++;
    
    if([player gameOver]){
        NSLog(@"Congrats");
    }
}

- (Player*) currentPlayer: (NSInteger) currentIndex
{
    _currentIndex = (_currentIndex + currentIndex) % _players.count;
    Player* player = _players[_currentIndex];
    NSLog(@"[%@]", player.name);
    return player;
}

- (void) gameOver
{
    Player *player;
    [player gameOver];
}
@end
