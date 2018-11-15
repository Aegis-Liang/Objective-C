//
//  Square.h
//  Exercise11-5
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Rectangle.h"

@interface Square: NSObject


-(id) init;
-(instancetype) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
@end
