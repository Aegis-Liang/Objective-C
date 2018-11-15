//
//  main.m
//  Program9-3
//
//  Created by Aegis Liang on 6/2/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  The usage of "class" and @selector directives

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        // isMemberOf:
        if ( [mySquare isMemberOfClass: [Square class]] == YES )                            // Yes
            NSLog (@"mySquare is a member of Square class");
        if ( [mySquare isMemberOfClass: [Rectangle class]] == YES )                         // No
            NSLog (@"mySquare is a member of Rectangle class");
        if ( [mySquare isMemberOfClass: [NSObject class]] == YES )                          // No
            NSLog (@"mySquare is a member of NSObject class");
        
        // isKindOf:
        if ( [mySquare isKindOfClass: [Square class]] == YES )                              // Yes
            NSLog (@"mySquare is a kind of Square");
        if ( [mySquare isKindOfClass: [Rectangle class]] == YES )                           // Yes
            NSLog (@"mySquare is a kind of Rectangle");
        if ( [mySquare isKindOfClass: [NSObject class]] == YES )                            // Yes
            NSLog (@"mySquare is a kind of NSObject");
        
        // respondsTo:
        if ( [mySquare respondsToSelector: @selector (setSide:)] == YES )                   // Yes
            NSLog (@"mySquare responds to setSide: method");
        if ( [mySquare respondsToSelector: @selector (setWidth:andHeight:)] == YES )        // Yes
            NSLog (@"mySquare responds to setWidth:andHeight: method");
        if ( [Square respondsToSelector: @selector (alloc)] == YES )                        // Yes
            NSLog (@"Square class responds to alloc method");
        
        // instancesRespondTo:
        if ([Rectangle instancesRespondToSelector: @selector (setSide:)] == YES)            // No
            NSLog (@"Instances of Rectangle respond to setSide: method");
        if ([Square instancesRespondToSelector: @selector (setSide:)] == YES)               // Yes
            NSLog (@"Instances of Square respond to setSide: method");
        if ([Square isSubclassOfClass: [Rectangle class]] == YES)                           // Yes
            NSLog (@"Square is a subclass of a rectangle");
    }
    return 0;
}
