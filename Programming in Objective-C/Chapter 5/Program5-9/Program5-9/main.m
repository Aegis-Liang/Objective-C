//
//  main.m
//  Program5-9
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );    }
    return 0;
}
