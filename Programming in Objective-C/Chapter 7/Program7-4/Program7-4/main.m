//
//  main.m
//  Program7-4
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//


//  Add reduce function in this program.

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
     
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        [aFraction print]; NSLog (@"+");
        [bFraction print]; NSLog (@"=");
        [aFraction add: bFraction];
        
        // reduce the result of the addition and print the result
        [aFraction reduce];
        [aFraction print];
    }
    return 0;
}
