//
//  HealthCard.h
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HealthCard : NSObject
@property BOOL valid;

+ (instancetype) newValid;
+ (instancetype) newInvalid;
@end
