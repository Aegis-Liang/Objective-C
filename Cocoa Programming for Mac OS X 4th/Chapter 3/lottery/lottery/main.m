//
//  main.m
//  lottery
//
//  Created by Aegis Liang on 11/16/18.
//  Copyright © 2018 X. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for (i = 0; i < 10; i++) {
            NSNumber *newNumber =
            [[NSNumber alloc] initWithInt:(i * 3)];
            [array addObject:newNumber];
        }
        
        for ( i = 0; i < 10; i++) {
            NSNumber *numberToPrint = [array objectAtIndex:i];
            NSLog(@"The number at index %d is %@",  i, numberToPrint);
        }
         */
        
        // Create the date object
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        
        // Seed the random number generator srandom((unsigned)time(NULL));
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for (i = 0; i < 10; i++) {
            [weekComponents setWeek:i];
            // Create a date/time object that is ‘i’ weeks from now
            NSDate *iWeeksFromNow;
            
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents
                                                 toDate:now
                                                options:0];
            
            // Create a new instance of LotteryEntry
            // LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
            
            
            //[newEntry prepareRandomNumbers];
            [newEntry setEntryDate:iWeeksFromNow];
            // Add the LotteryEntry object to the array
            [array addObject:newEntry];
        }
        for (LotteryEntry *entryToPrint in array) {
            // Display its contents
            NSLog(@"%@", entryToPrint);
        }
        
    }
    return 0;
}
