//
//  Person.h
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "HealthCard.h"

@interface Person : NSObject

@property NSString *name;

+ (instancetype) newWithName: (NSString *) name;
- (void) say: (NSString *) message;

@end
