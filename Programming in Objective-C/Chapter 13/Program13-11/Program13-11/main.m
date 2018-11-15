//
//  main.m
//  Program13-11
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program introduces pointer, 13-13 introduce "->" which is same as *(xxx).yyy

#import <Foundation/Foundation.h>

void exchange (int *pint1, int *pint2) {
    int temp;
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Program13-11
        int count = 10, x;
        int *intPtr;
        intPtr = &count;
        x = *intPtr;
        NSLog (@"count = %i, x = %i", count, x);
        
        // Below code is from Program13-12
        char c = 'Q';
        char *charPtr = &c;
        NSLog (@"%c %c", c, *charPtr);
        c = '/';
        NSLog (@"%c %c", c, *charPtr);
        *charPtr = '('; NSLog (@"%c %c", c, *charPtr);
        
        // Below code is from Program13-13
        struct date {
            int month; int day; int year;
        };
        struct date today, *datePtr;
        datePtr = &today;
        datePtr->month = 9;
        datePtr->day = 25;
        datePtr->year = 2014;
        NSLog (@"Today's date is %i/%i/%.2i.",
               datePtr->month, datePtr->day, datePtr->year % 100);
        
        // Below code is from Program13-14
        void exchange(int *pint1, int *pint2);
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        exchange (p1, p2);
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        exchange (&i1, &i2);
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
              
            
            
            
    }
    return 0;
}
