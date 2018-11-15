//
//  main.m
//  Program9-1
//
//  Created by Aegis Liang on 6/2/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  Program9-2 introduces how to use datatype id.

#import "Fraction.h" 
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];
        // add and print 2 complex numbers
        [c1 print];
        NSLog (@" +");
        [c2 print];
        NSLog (@"---------");
        compResult = [c1 add: c2];
        [compResult print];
        NSLog (@"\n");
               
        // add and print 2 fractions
        [f1 print];
        NSLog (@" +");
        [f2 print];
        NSLog (@"----");
        fracResult = [f1 add: f2];
        [fracResult print];
        
        // below code is from Program9-2
        id dataValue;
        Fraction *f3 = [[Fraction alloc] init];
        Complex *c3 = [[Complex alloc] init];
        [f3 setTo: 2 over: 5];
        [c3 setReal: 10.0 andImaginary: 2.5];
        // first dataValue gets a fraction
        dataValue = f3;
        [dataValue print];
        // now dataValue gets a complex number
        dataValue = c3;
        [dataValue print];
    }
    return 0;
}
