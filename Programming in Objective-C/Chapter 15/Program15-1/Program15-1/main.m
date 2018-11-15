//
//  main.m
//  Program15-1
//
//  Created by Aegis Liang on 6/5/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// This program introduces NSNumber

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        // integer value
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog (@"%li", (long) myInt);
        // long value
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog (@"%lx", [myNumber longValue]);
        // char value
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog (@"%c", [myNumber charValue]);
        // float value
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog (@"%g", [floatNumber floatValue]);
        // double
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog (@"%lg", [myNumber doubleValue]);
        // Wrong access here
        NSLog (@"%li", (long) [myNumber integerValue]); // Test two Numbers for equality
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog (@"Numbers are equal");
        else
            NSLog (@"Numbers are not equal");
        // Test if one Number is <, ==, or > second Number
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog (@"First number is less than second");
        
        // Below code is from Program15-2
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog (@"%li", (long) myInt);
        // long value
        myNumber = @0xabcdefL;
        NSLog (@"%lx", [myNumber longValue]);
        myNumber = @'X';
        NSLog (@"%c", [myNumber charValue]);
        // float value
        floatNumber = @100.0f;
        NSLog (@"%g", [floatNumber floatValue]);
    }
    return 0;
}
