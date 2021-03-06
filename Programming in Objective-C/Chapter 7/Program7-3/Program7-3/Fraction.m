//
//  Fraction.m
//  Program7-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Fraction.h"
@implementation Fraction
@synthesize numerator, denominator;

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

// add a Fraction to the receiver
- (void) add: (Fraction *) f {
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator; }
@end
