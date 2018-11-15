//
//  main.m
//  Program15-7
//
//  Created by Aegis Liang on 6/6/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// This program introduces NSArray

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int i;
    
    @autoreleasepool {
        
        NSArray *monthNames = [NSArray arrayWithObjects: @"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
        // Now list all the elements in the array
        NSLog (@"Month Name");
        NSLog (@"===== ====");
        for (i = 0; i < 12; ++i)
            NSLog (@" %2i %@", i + 1, [monthNames objectAtIndex: i]);
        
        // Below code is from Program15-8
        // Create an array to contain the month names
        NSArray *monthNames2 = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
        // Now list all the elements in the array
        NSLog (@"Month Name");
        NSLog (@"===== ====");
        for (i = 0; i < 12; ++i)
            NSLog (@" %2i %@", i + 1, monthNames2[i]);
        
        // Below code is from Program15-9
        NSMutableArray *numbers = [NSMutableArray array];
        // int i;
        // Create an array with the numbers 0-9
        for (i = 0; i < 10; ++i )
            numbers[i] = @(i);
        // Sequence through the array and display the values
        for (i = 0; i < 10; ++i )
            NSLog (@"%@", numbers[i]);
        // Look how NSLog can display it with a single %@ format
        NSLog (@"====== Using a single NSLog");
        NSLog (@"%@", numbers);
    }
    return 0;
}
