//
//  Fraction.m
//  Program7-2
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Fraction.h"
@implementation Fraction @synthesize numerator, denominator;
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
    numerator = n; denominator = d;
} @end
