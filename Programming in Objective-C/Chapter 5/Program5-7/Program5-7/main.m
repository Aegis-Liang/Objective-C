//
//  main.m
//  Program5-7
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        NSLog (@"Please type in two nonnegative integers.");
        scanf ("%u%u", &u, &v);
        while ( v != 0 ) { temp = u % v;
            u = v;
            v = temp;
        }
        NSLog (@"Their greatest common divisor is %u", u);
    }
    return 0;
}
