//
//  ContactList.m
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if(self){
        _contactArry = [NSMutableArray array];
    
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [_contactArry addObject:newContact];
}


-(BOOL) findDuplicate:(NSString*) name
{
    BOOL match = false;
    for(Contact *contact in _contactArry){
        if([[contact name] isEqual:name]){
            match = true;
        }
    }
    return match;
}


- (Contact *) find: (int) index
{
    if (index >= _contactArry.count) {
        return NULL;
    }
    
    return _contactArry[index];
}

- (Contact *) findById:(NSString *) id
{
    
    return [self find:[id intValue]];
}

- (NSMutableArray *) search: (NSString *) keyword
{
    NSMutableArray *result = [NSMutableArray array];
    for (int i = 0; i < _contactArry.count; i++) {
        Contact *c = _contactArry[i];
        if ([c.name containsString:keyword] || [c.email containsString:keyword]) {
            [result addObject:c];
        }
    }
    return result;
}
- (void) listAll
{
    for (int i = 0; i < _contactArry.count; i++) {
        Contact *c = _contactArry[i];
        NSLog(@"%d: %@ <%@>\n", i, c.name, c.email);
    }
}
@end
