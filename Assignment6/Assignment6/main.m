//
//  main.m
//  Assignment6
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *result;
        NSInteger randomNum;
        NSMutableArray *collection = [NSMutableArray new]; //全部のサイコロ
        NSMutableArray *intArray = [NSMutableArray new]; //選べれたidxのarry
        NSMutableArray *heldDice = [NSMutableArray new]; //ホールドしてるサイコロのarry
        NSInteger idxInt;
        NSLog(@"Let's start Threelow!!");
       
        
        while(YES){
            NSLog(@"What do you want to do?\n roll\n score\n check (held dice)\n reset");
           
            InputHandler *input = [InputHandler new];
            GameController *controller = [GameController new];
            Dice *dice = [Dice new];
            
            if([input.string isEqual:@"roll"]){
                //5回サイコロふる
                for(int i= 1; i <= 5; i++){
                    
                    randomNum = [dice random];
                    result= [dice diceNumber:randomNum];
                     //全ての結果をarrayに入れる
                    [collection addObject:[NSNumber numberWithInteger:randomNum]];
                    NSLog(@"This is result: %@",result);                    
                }
                NSLog(@"Which index of dice do you wanna hold?");
                InputHandler *inputIndex = [InputHandler new];
                //選ばれたidxのstringをsplitし、arryに格納　[]マークをつけて返す
            
                NSArray *idxArry = [inputIndex.string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                
                for(NSString *index in idxArry){
                    idxInt = [index intValue];
                    if(idxInt > 4){
                        NSLog(@"Pls  choose it again");
                        break;
                    }
                    [intArray addObject:[NSNumber numberWithInteger:idxInt]];
                    [heldDice addObject:[NSNumber numberWithInteger:[controller holdDie:idxInt arry:collection]]];
                    
                }
                
            }else if([input.string isEqual:@"check"]){
                for(NSNumber *held in heldDice){
                    NSString *a = [dice diceNumber:[held integerValue]];
                    NSLog(@"[%@]", a);
                }

            }else if([input.string isEqual:@"reset"]){
                [controller resetDice:heldDice];
            }else if([input.string isEqual:@"score"]){
                NSLog(@"%ld",(long)[controller countScore:heldDice]);
            }
        }
        
    }
    return 0;
}
