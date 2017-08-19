//
//  Box.h
//  Assignment2
//
//  Created by 岡田暁 on 2017-08-17.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

-(instancetype) initWithHeight:(float) height width:(float) width length:(float) length;
- (instancetype) initWithVolume:(float) volume;

@property (atomic) float height;
@property (assign) float width;
@property (assign) float length;
@property (assign) float volume;

-(void) setVolume;









@end













