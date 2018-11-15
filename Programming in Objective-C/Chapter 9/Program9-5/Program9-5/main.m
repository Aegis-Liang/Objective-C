//
//  main.m
//  Program9-5
//
//  Created by Aegis Liang on 6/2/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// Introduce exception

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myArray = [NSArray array];
        @try {
            [myArray objectAtIndex: 2];
        }
        @catch (NSException *exception) {
            NSLog (@"Caught %@%@", exception.name, exception.reason); }
        NSLog (@"Execution continues");
    }
    return 0;
}
