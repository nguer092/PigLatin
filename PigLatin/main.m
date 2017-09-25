//
//  main.m
//  PigLatin
//
//  Created by Nicolas Guerrero on 9/25/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        PigLatin *latin = [PigLatin new];
        latin.pig = @"Hello World";
        NSLog(@"%@", [latin stringByPigLatinization]);
    }
    return 0;
}
