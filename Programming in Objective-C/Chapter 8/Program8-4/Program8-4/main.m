//
//  main.m
//  Program8-4
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program add origin point to rectangle, please note use @class XYPoint when you only need the reference pointer of XYPoint such as:
//  -(XYPoint *) origin;
//  -(void) setOrigin: (XYPoint *) pt;
//  if you need access XYPoint's member, you must use #import "XYPoint.h"

//  if use "origin = pt;" in setOrigin(), it will occur alias issue, modify it like following:
/*  -(void) setOrigin: (XYPoint *) pt {
    if (! origin)
        origin = [[XYPoint alloc] init];
        origin.x = pt.x;
        origin.y = pt.y;
        }
 */
// and we must import "XYPoint.h" in Rectangle class since the 3 line of code in setOrigin() function assessed members of XYPoint, only @class XYPoint in Rectangle.h is not enough.


#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init]; XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX: 100 andY: 200];
        [myRect setWidth: 5 andHeight: 8]; myRect.origin = myPoint;
        NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height); NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y); NSLog (@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}
