//
//  ContactList.h
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

@property NSMutableArray *contactArry;
- (instancetype)init;
- (void)addContact:(Contact *) newContact;
- (BOOL) findDuplicate:(NSString*) name;
- (Contact *) find: (int) index;
- (Contact *) findById:(NSString *) id;
- (NSMutableArray *) search: (NSString *) keyword;

- (void) listAll;
@end
