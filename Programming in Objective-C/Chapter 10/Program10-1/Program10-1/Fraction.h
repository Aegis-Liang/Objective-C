//
//  Fraction.h
//  Program7-5
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
// Define the Fraction class
@interface Fraction : NSObject
@property int numerator, denominator;
-(instancetype) initWith: (int) n over: (int) d;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;
@end
