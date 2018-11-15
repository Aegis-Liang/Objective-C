//
//  main.m
//  Program7-2
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        [aFraction setTo: 100 over: 200];
        [aFraction print];
        [aFraction setTo: 1 over: 3];
        [aFraction print];
    }
    return 0;
}
