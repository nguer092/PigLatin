//
//  PigLatin.m
//  PigLatin
//
//  Created by Nicolas Guerrero on 9/25/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "PigLatin.h"

@implementation PigLatin

-(NSString*)stringByPigLatinization{
    //Create NSCharacter set to ignore vowels
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    //Create mutable string to concatenate Pig Latined String
    __block NSMutableString* pigLatinString = [[NSMutableString alloc] init];
    //Separate sentence received
    NSArray *allStrings = [self.pig componentsSeparatedByString:@" "];
    //Loop through all characters and only take consonants
    [allStrings enumerateObjectsUsingBlock:^(NSString*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //Check if first character is a vowel
        if ([vowels characterIsMember:[obj characterAtIndex:0]]){
            [pigLatinString appendString:[NSString stringWithFormat:@"%@%@ ", obj, @"ay"]];
        } else {
            //Check if second & third string are consonants
            if (![vowels characterIsMember:[obj characterAtIndex:1]] &&
                ![vowels characterIsMember:[obj characterAtIndex:2]]){
                [pigLatinString appendString:[NSString stringWithFormat:@"%@%@%@ ",
                                              [obj substringFromIndex:3],
                                              [obj substringToIndex:3],
                                              @"ay"]];
                //Check if second string is a consonant
            } else if (![vowels characterIsMember:[obj characterAtIndex:1]]){
                [pigLatinString appendString:[NSString stringWithFormat:@"%@%@%@ ",
                                              [obj substringFromIndex:2],
                                              [obj substringToIndex:2],
                                              @"ay"]];
                //Only first string is a consonant
            } else {
                [pigLatinString appendString:[NSString stringWithFormat:@"%@%@%@ ",
                                              [obj substringFromIndex:1],
                                              [obj substringToIndex:1],
                                              @"ay"]];
            }
        }
    }];
    return pigLatinString;
}

@end
