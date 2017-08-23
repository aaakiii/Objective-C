//
//  Contact.m
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-22.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "Contact.h"
#import "PhoneNumber.h"

@implementation Contact

- (instancetype) init
{
    self = [super init];
    if(self){
        
        _phones = [NSMutableArray array];
    
    }

    return self;
}

- (void) addPhone:(NSString *)label withNumber:(NSString *)number
{
    PhoneNumber *phone = [PhoneNumber new];
    phone.label = label;
    phone.number = number;
    [_phones addObject:phone];

}
   


@end
