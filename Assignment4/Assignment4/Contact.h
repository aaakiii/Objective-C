//
//  Contact.h
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-22.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableArray *phones;
- (instancetype) init;

- (void) addPhone: (NSString *) label withNumber: (NSString *) number;


@end
