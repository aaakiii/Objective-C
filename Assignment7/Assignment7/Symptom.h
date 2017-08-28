//
//  Sympton.h
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Symptom : NSObject

@property NSString *title;
@property NSMutableSet *medicines;

+ (instancetype) newWithTitle: (NSString *) title;

@end
