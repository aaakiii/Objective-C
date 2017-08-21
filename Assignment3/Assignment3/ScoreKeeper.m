//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

NSInteger right;
NSInteger wrong;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
        
    }
    return self;

}

- (NSString *)score
{
    float percent = (100*_right)/(_right+_wrong);
    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong ----- %.2f%%", (long)_right, (long)_wrong, percent];
}


@end
