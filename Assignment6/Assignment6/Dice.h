//
//  Dice.h
//  Assignment6
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int num;
- (NSString *) diceNumber:(NSInteger)num;
-(NSInteger)random;


@end
