//
//  QuestionManager.h
//  Assignment5
//
//  Created by 岡田暁 on 2017-08-23.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;
- (instancetype)init;
- (void) addQuestion:(Question *) question;
@end
