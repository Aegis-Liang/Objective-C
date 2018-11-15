//
//  Rectangle.h
//  Program8-4
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;

@interface Rectangle: NSObject
@property int width, height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;

@end
