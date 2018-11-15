//
//  main.m
//  Exercise11-5
//
//  Created by Aegis Liang on 6/4/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This exercise introduces using composition rather than inherition to avoid providing unproper functions

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        [mySquare setSide: 5];
        NSLog (@"Square s = %i", [mySquare side]);
        NSLog (@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    }
    return 0;
}
