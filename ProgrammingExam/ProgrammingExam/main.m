//
//  main.m
//  ProgrammingExam
//
//  Created by 岡田暁 on 2017-09-05.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "Player.h"
#import "Judge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Game *game = [Game new];
        Player *player = [Player new];
        Judge *judge = [Judge new];
        
        
        printf("========================\n");
        printf("WELCOME TO TIC TAC TOE!\n\tDesigner:Aki Okada\n\tClass:Cornerstone WMDP\n\tDate: September 5th\n");
        printf("1---person vs. person\n");
        printf("2---person vs. random computerz\n");
        printf("Enter your choice(1 or 2)\n");
        printf("========================\n");
        
        char input[5];
        fgets(input,5,stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:input];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"You have entered choice %@\n",inputString);
        NSLog(@"The current status is :\n");
            
            [game showStatus:game.status1];
            [game showStatus:game.status2];
            [game showStatus:game.status3];
        
        if([inputString isEqualToString:@"1"]){
            
            while(YES){
                NSInteger play = [player getPlayer];
                NSLog(@"Player %ld:make your move",play);
                fgets(input,5,stdin);
                NSString *inputString = [[NSString alloc] initWithUTF8String:input];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSArray *inputItems = [inputString componentsSeparatedByString:@" "];
                if([inputItems[0] isEqualToString:@"1"]){
                    [game showStatus:[game getStatus1st:[inputItems[1] integerValue] mark:[player getMark:play]]];
                    [game showStatus:game.status2];
                    [game showStatus:game.status3];
                    NSLog(@"+-----------+");
                    NSLog(@"%@",[judge getResult]);
                }else if([inputItems[0] isEqualToString:@"2"]){
                    [game showStatus:game.status1];
                    [game showStatus:[game getStatus2nd:[inputItems[1] integerValue] mark:[player getMark:play]]];
                    [game showStatus:game.status3];
                    NSLog(@"+-----------+");
                    NSLog(@"%@",[judge getResult]);
                }else if([inputItems[0] isEqualToString:@"3"]){
                    [game showStatus:game.status1];
                    [game showStatus:game.status2];
                    [game showStatus:[game getStatus3rd:[inputItems[1] integerValue] mark:[player getMark:play]]];
                    NSLog(@"+-----------+");
                    NSLog(@"%@",[judge getResult]);
                }
                
            }
            
        }
    
        
        
        
    }
    return 0;
}
