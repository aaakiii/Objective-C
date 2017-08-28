//
//  main.m
//  Assignment10
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(YES){
            int randomNum = arc4random_uniform(1000) + 100;
            char input[5];
            NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: Apple", randomNum);
            fgets(input,5,stdin);
            int inputInt = atoi(input);
            NSLog(@"%d",inputInt);
            
            PaymentGateway *payment = [PaymentGateway new];
                   
            if(inputInt == 1){
                PaypalPaymentService *paypal = [PaypalPaymentService new];
                payment.delegate = paypal;
                [paypal processPaymentAmount:randomNum];
                
            }else if(inputInt == 2){
               StripePaymentService *stripe = [StripePaymentService new];
                payment.delegate = stripe;
                [stripe processPaymentAmount:randomNum];
                
            }else if(inputInt == 3){
                AmazonPaymentService *amazon = [AmazonPaymentService new];
                payment.delegate = amazon;
                [amazon processPaymentAmount:randomNum];
                
            }else if (inputInt == 4){
                ApplePaymentService *apple = [ApplePaymentService new];
                payment.delegate = apple;
                [apple processPaymentAmount:randomNum];
            }else{
                
                break;
            }
        
        }
        
    }
    return 0;
}
