//
//  NSString+PigLatin.m
//  Assignment13
//
//  Created by 岡田暁 on 2017-08-25.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

+ (NSString *) changePigLatinFromString:(NSString *)string
{
    NSString *stringChar = [string substringToIndex:2];
    NSArray *constans = @[@"bl",@"br",@"ch",@"cl",@"cr",@"dr",@"fl",@"fr",@"gl", @"gr", @"pl", @"pr",@"sc",@"sh", @"sk",@"sl", @"sm", @"sn",@"sp", @"st", @"sw",@"th", @"tr",@"tw",@"wh", @"wr"];
    BOOL isTheObjectThere = [constans containsObject:stringChar];
    NSString *result = NULL;
    if(isTheObjectThere){
        
        result = [NSString stringWithFormat:@"%@%@ay", [string substringFromIndex:2], [string substringToIndex:2]];
        
    }else{
        NSRange range = [string rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiou"]];
    
        if(range.location < string.length){
    
            result = [NSString stringWithFormat:@"%@%@ay", [string substringToIndex:1], [string substringFromIndex:1]];
        }else{
            result = [NSString stringWithFormat:@"%@%@ay", [string substringFromIndex:1], [string substringToIndex:1]];
            
        }
    }
    return result;
}

@end
