//
//  main.m
//  Program13-10
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// This program introduces struct

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct date {
            int month; int day; int year;
        };
        struct date today;
        today.month = 9;
        today.day = 25;
        today.year = 2014;
        NSLog (@"Today's date is %i/%i/%.2i.", today.month, today.day, today.year % 100);
    }
    return 0;
}
