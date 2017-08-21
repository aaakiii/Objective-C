//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

- (instancetype)init;
- (NSString *)score;
@property NSInteger right;
@property NSInteger wrong;



@end
