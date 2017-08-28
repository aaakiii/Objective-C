//
//  Patient.h
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Symptom.h"

@class Doctor;

@interface Patient : Person

@property HealthCard *healthCard;
@property NSMutableArray *symptoms;

- (void) addSympom: (Symptom *) symptom;
- (void) removeSympom: (Symptom *) symptom;
- (BOOL) visitDoctor: (Doctor *) doctor;
- (BOOL) hasValidHealthCard;
- (void) getValidHealthCard;
- (NSString *) id;

@end
