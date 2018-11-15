//
//  main.m
//  Program7-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program added a function for adding another fraction.

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        // Set two fractions to 1/4 and 1/2 and add them together
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        // Print the results
        [aFraction print];
        NSLog (@"+");
        [bFraction print];
        NSLog (@"=");
        [aFraction add: bFraction];
        [aFraction print];
    }
    return 0;
}
