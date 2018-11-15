//
//  Fraction.h
//  Program7-2
//
//  Created by Aegis Liang on 5/31/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
// Define the Fraction class
@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
@end
