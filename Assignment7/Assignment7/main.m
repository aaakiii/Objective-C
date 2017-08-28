//
//  main.m
//  Assignment7
//
//  Created by 岡田暁 on 2017-08-27.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Symptom.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor newWithName:@"Dr. Alice"];
        Patient *patient = [Patient newWithName:@"Bob"];
        
        // sicka
        Symptom *cough = [Symptom newWithTitle:@"Cough"];
        [cough.medicines addObject:@"Benylin"];
        Symptom *fever = [Symptom newWithTitle:@"Fever"];
        [fever.medicines addObject:@"Advil"];
        [fever.medicines addObject:@"Ice"];
        
        // make them sick
        [patient addSympom:cough];
        [patient addSympom:fever];
        
        // see doctor without health card
        if (![patient visitDoctor:doctor]) {
            [patient say:@"Oh my."];
        }
        
        // see doctor with health card
        [patient getValidHealthCard];
        if ([patient visitDoctor:doctor]) {
            [patient say:@"OK. I need rest."];
        }
        
        printf("- Few days later... -\n");
        
        // fever has gone but still conghing
        [patient removeSympom:fever];
        
        // see doctor again
        [patient visitDoctor:doctor];
    return 0;
}
