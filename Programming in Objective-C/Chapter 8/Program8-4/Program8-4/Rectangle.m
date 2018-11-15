//
//  Rectangle.m
//  Program8-4
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle{
    XYPoint *origin; }

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h {
    width = w;
    height = h; }

-(int) area {
    return width * height; }

-(int) perimeter {
    return (width + height) * 2; }

-(void) setOrigin: (XYPoint *) pt {
    //origin = pt;
    if (! origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin {
    return origin; }

@end
