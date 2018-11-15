//
//  main.m
//  Program3-2
//
//  Created by Aegis Liang on 5/30/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n; -(void) setDenominator: (int) d;
@end


//---- @implementation section ----
@implementation Fraction {
    int numerator;
    int denominator; }
-(void) print {
    NSLog (@"%i/%i", numerator, denominator); }
-(void) setNumerator: (int) n {
    numerator = n; }
-(void) setDenominator: (int) d {
    denominator = d; }
@end


//---- program section ----
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;
        // Create an instance of a Fraction
        myFraction = [Fraction alloc]; myFraction = [myFraction init];
        // Set fraction to 1/3
        [myFraction setNumerator: 1]; [myFraction setDenominator: 3];
        // Display the fraction using the print method
        NSLog (@"The value of myFraction is:");
        [myFraction print]; }
    return 0;
}
