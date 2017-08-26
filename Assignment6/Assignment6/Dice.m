//
//  Dice.m
//  Assignment6
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (NSString *) diceNumber:(NSInteger)num
{
    if(num == 1){
        return @"⚀";
    }else if(num == 2){
        return @"⚁";
    }else if(num == 3){
        return @"⚂";
    }else if(num == 4){
        return @"⚃";
    }else if(num == 5){
        return @"⚄";
    }else if(num == 6){
        return @"⚅";
    }else {
        return @"";
    }
}

-(NSInteger)random
{
    _num = arc4random_uniform(6)+1;
    return _num;
}

@end
