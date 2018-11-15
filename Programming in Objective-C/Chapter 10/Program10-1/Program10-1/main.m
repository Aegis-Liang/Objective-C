//
//  main.m
//  Program10-1
//
//  Created by Aegis Liang on 6/3/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  Add another initialize function, but it's not overload.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b;
        a = [[Fraction alloc] initWith: 1 over: 3];
        b = [[Fraction alloc] initWith: 3 over: 7];
        [a print];
        [b print];
    }
    return 0;
}
