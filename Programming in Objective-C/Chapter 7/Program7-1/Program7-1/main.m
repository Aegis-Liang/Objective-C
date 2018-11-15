//
//  main.m
//  Program7-1
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Fraction.h"

int main (int argc, char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        // set fraction to 1/3
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        // display the fraction
        NSLog (@"The value of myFraction is:");
        [myFraction print]; }
    return 0;
}

// compile command
// clang -fobjc-arc Fraction.m main.m –o FractionTest
