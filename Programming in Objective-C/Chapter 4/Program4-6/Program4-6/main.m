//
//  main.m
//  Program4-6
//
//  Created by Aegis Liang on 5/30/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h> 

@interface Calculator: NSObject

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end


@implementation Calculator {
    double accumulator; }

-(void) setAccumulator: (double) value {
    accumulator = value; }
-(void) clear {
    accumulator = 0; }
-(double) accumulator {
    return accumulator; }

-(void) add: (double) value {
    accumulator += value; }
-(void) subtract: (double) value {
    accumulator -= value; }
-(void) multiply: (double) value {
    accumulator *= value; }
-(void) divide: (double) value {
    accumulator /= value; }
@end

int main (int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200.];
        [deskCalc divide: 15.0];
        [deskCalc subtract: 10.0];
        [deskCalc multiply: 5];
        NSLog (@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}
