//
//  Square.m
//  Exercise11-5
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "Square.h"


@implementation Square{
    Rectangle *rect;                            // this could move to interface, but here is OK
}

// Insert Square methods here ...
-(id) init{
//    self->rect = [self->rect init];           // without alloc, the pointer is nil, properties are 0s
    
//    rect = [[Rectangle alloc] init];          // debug OK
//    return [super init];
    
    // Regular style
    if (self = [super init])
        rect = [[Rectangle alloc] init];
    return self;
}


-(instancetype) initWithSide: (int) s{
    self = [super init];
    if (self) {
        self->rect = [[Rectangle alloc] init];      // use [Rectangle alloc] not [self->rect alloc]
        [self->rect setWidth:s andHeight:s];
    }
    return self;
}

-(void) setSide: (int) s{
    [self->rect setWidth:s andHeight:s];
}

-(int) side{
    return [self->rect width];
}

-(int) area{
    return [self->rect width] * [self->rect width];
}

-(int) perimeter{
    return [self->rect width] * 4;
}

@end
