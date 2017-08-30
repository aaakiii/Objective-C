//
//  Player.h
//  Assignment14
//
//  Created by 岡田暁 on 2017-08-30.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property BOOL over;
-(void) roll;
-(BOOL)gameOver;
@end
