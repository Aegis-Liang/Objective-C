//
//  Rectangle.h
//  Program8-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject
@property int width, height;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
@end
