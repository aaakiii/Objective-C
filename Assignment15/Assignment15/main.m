//
//  main.m
//  Assignment15
//
//  Created by 岡田暁 on 2017-08-31.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PlayerManager *manager  = [PlayerManager new];
        NSLog(@"Welcome to Snake & Ladders.");
        while(manager.players.count <= 0){
            NSLog(@"Pls enter player numbers.");
            char input[10];
            fgets (input, 10, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:input];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            [manager createPlayers:[inputString integerValue]];
        }
        
        while(TRUE){
            
            NSLog(@"Pls enter 'roll' or 'r' to start the game.");
            char input[10];
            fgets (input, 10, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:input];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if([inputString isEqualToString:@"roll" ] || [inputString isEqualToString:@"r"]){
            
                Player *player = [manager currentPlayer:manager.currentIndex];
                [manager roll:player];
                
                
            }
        }
    }
    return 0;
}
