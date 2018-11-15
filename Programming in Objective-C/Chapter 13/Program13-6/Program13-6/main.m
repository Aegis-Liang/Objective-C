//
//  main.m
//  Program13-6
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program introduces block, which is same as anonymous functions and closure?

#import <Foundation/Foundation.h>

void (^calculateTriangularNumber) (int) = ^(int n) {
    int i, triangularNumber = 0;
    for ( i = 1; i <= n; ++i )
        triangularNumber += i;
    NSLog (@"Triangular number %i is %i", n, triangularNumber); };

int (^gcd) (int, int) = ^(int u, int v){
    int temp;
    while ( v != 0 ) {
        temp = u % v;
        u = v;
        v = temp; }
    return u; };

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // This is from Program 13-6
        void (^printMessage)(void) =
        ^(void) {
            NSLog (@"Programming is fun.");
        };
        printMessage ();
        
        // These are from Program 13-7
        calculateTriangularNumber (10);
        calculateTriangularNumber (20);
        calculateTriangularNumber (50);
        
        // These are from Program 13-8
        // The printFoo block can access the value of the local variable foo. Note that the value displayed is 10, and not 15. That’s because the value of foo is the value it had at the time the block was defined, and not at the time it was executed.
        int foo = 10;
        void (^printFoo)(void) = ^(void) {
            NSLog (@"foo = %i", foo); };
        foo = 15;
        printFoo ();
    }
    return 0;
}
