//
//  main.m
//  Program8-3
//
//  Created by Aegis Liang on 6/1/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// This program use square to inherit rectangle, square cannot access rectangle private instance variables
// directly, but you can call rectangle's setWidth method within square class.

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
