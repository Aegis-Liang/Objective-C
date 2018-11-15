//
//  main.m
//  Program7-5
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// The add function is modified to that the receiver is not being changed.

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *resultFraction;
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        [aFraction print]; NSLog (@"+");
        [bFraction print]; NSLog (@"=");
        // set 1st fraction to 1/4 // set 2nd fraction to 1/2
        resultFraction = [aFraction add: bFraction];
        [resultFraction print];
    }
    return 0;
}
