//
//  main.m
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Symptom.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor newWithName:@"Dr. Mike"];
        Patient *patient = [Patient newWithName:@"Anne"];
        Symptom *cough = [Symptom newWithTitle:@"Cough"];
        [cough.medicines addObject:@"Benylin"];
        Symptom *fever = [Symptom newWithTitle:@"Fever"];
        [fever.medicines addObject:@"Advil"];
        [fever.medicines addObject:@"Ice"];
        [patient addSympom:cough];
        [patient addSympom:fever];
        if (![patient visitDoctor:doctor]) {
            [patient say:@"Oh my."];
        }
        [patient getValidHealthCard];
        if ([patient visitDoctor:doctor]) {
            [patient say:@"OK. I need rest."];
        }
        NSLog(@"- Few days later... -\n");
        
     
        [patient removeSympom:fever];
        

        [patient visitDoctor:doctor];
    }
    return 0;
}
