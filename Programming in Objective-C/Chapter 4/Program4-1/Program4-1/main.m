//
//  main.m
//  Program4-1
//
//  Created by Aegis Liang on 5/30/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

/*
 Type                           Constant Examples                   NSLog chars
 char                           'a', '\n'                           %c
 short int                      -                                   %hi, %hx, %ho
 unsigned short int             -                                   %hu, %hx, %ho
 int                            12,-97,0xFFE0, 0177                 %i, %x, %o
 unsigned int                   12u, 100U, 0XFFu                    %u, %x, %o
 long int                       12L, -2001, 0xffffL                 %li, %lx, %lo
 unsigned long int              12UL, 100ul, 0xffeeUL               %lu, %lx, %lo
 long long int                  0xe5e5e5e5LL, 500ll                 %lli, %llx, &llo
 unsigned long long             12ull, 0xffeeULL                    %llu, %llx, %llo
 int float                      12.34f, 3.1e-5f, 0x1.5p10, 0x1P-1   %f, %e, %g, %a
 double                         12.34, 3.1e-5, 0x.1p3               %f, %e, %g, %a
 long double                    12.34L, 3.1e-5l                     %Lf, $Le, %Lg
 id                             nil                                 %p
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog (@"integerVar = %i", integerVar);
        NSLog (@"floatingVar = %f", floatingVar);
        NSLog (@"doubleVar = %e", doubleVar);
        NSLog (@"doubleVar = %g", doubleVar);
        NSLog (@"charVar = %c", charVar);
    }
    return 0;
}
