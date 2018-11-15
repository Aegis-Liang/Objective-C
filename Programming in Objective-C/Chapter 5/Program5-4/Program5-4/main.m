//
//  main.m
//  Program5-4
//
//  Created by Aegis Liang on 5/30/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;
        NSLog (@"What triangular number do you want?");
        scanf ("%i", &number);
        triangularNumber = 0;
        for ( n = 1; n <= number; ++n )
            triangularNumber += n;
        NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
    }
    return 0;
}
