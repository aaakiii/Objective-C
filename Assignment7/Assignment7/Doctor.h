//
//  Doctor.h
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@class Patient;

@interface Doctor : Person

@property NSMutableSet *patients;
@property NSMutableDictionary *prescriptionLog;

- (NSMutableSet *) acceptPaticent: (Patient *) patient;
- (BOOL) requestMedication: (NSMutableSet *) prescription;

@end
