//
//  Box.m
//  Assignment2
//
//  Created by 岡田暁 on 2017-08-17.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Box.h"

@implementation Box{
    float _height;
    float _width;
    float _length;
    float _volume;

}




-(instancetype) initWithHeight:(float) height width:(float) width length:(float) length{
    self = [self init];
    if(self){
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (instancetype) initWithVolume:(float) volume{
    self = [self init];
    if(self){
        _volume = volume;
    }
    return self;
    
}


-(void) setVolume
{
    _volume = _height * _width * _length;
}
@end
