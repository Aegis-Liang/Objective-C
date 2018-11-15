//
//  main.m
//  Program10-2
//
//  Created by Aegis Liang on 6/3/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  Introduce the static variable to class, but there is no where could find the place set the gCounter = 0

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;
        NSLog (@"Fractions allocated: %i", [Fraction count]);
        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];
        NSLog (@"Fractions allocated: %i", [Fraction count]);
    }
    return 0;
}
