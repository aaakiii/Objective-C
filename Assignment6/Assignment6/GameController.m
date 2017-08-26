//
//  GameController.m
//  Assignment6
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController



-(NSMutableArray *)heldDice:(NSInteger)idx arry:(NSMutableArray *) arry
{
    NSMutableArray *held =[NSMutableArray new];
    [held addObject:arry[idx]];
    return held;
}

-(NSInteger)holdDie:(NSInteger)idx arry:(NSMutableArray *) arry
{
    
    _contents = arry[idx];
    return [_contents integerValue];
}

- (void) resetDice :(NSMutableArray *) arry
{
    [arry removeAllObjects];
}

- (NSInteger) countScore:(NSMutableArray *)heldDice
{
    NSInteger total = 0;
    if(heldDice == NULL){
        return 0;
    }else{
        for(NSNumber *score in heldDice){
            NSInteger scoreInt = [score integerValue];
            if(scoreInt == 3){
                total += 0;
            }else{
                total += scoreInt;
            }
        
        }
    return total;
    }
}


@end
