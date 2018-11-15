//
//  Square.m
//  Program8-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Square.h"
@implementation Square: Rectangle
-(void) setSide: (int) s {
    [self setWidth: s andHeight: s]; }
-(int) side
{
    return self.width;
} @end
