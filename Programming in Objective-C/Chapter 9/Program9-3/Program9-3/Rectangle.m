//
//  Rectangle.m
//  Program8-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Rectangle.h"
@implementation Rectangle
@synthesize width, height;
-(void) setWidth: (int) w andHeight: (int) h {
    width = w;
    height = h; }
-(int) area {
    return width * height; }
-(int) perimeter {
    return (width + height) * 2; }
@end
