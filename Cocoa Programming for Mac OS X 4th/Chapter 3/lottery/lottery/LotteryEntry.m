//
//  LotteryEntry.m
//  lottery
//
//  Created by Aegis Liang on 3/31/19.
//  Copyright © 2019 X. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

/*
- (void)prepareRandomNumbers
{
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
}
 */
- (void)setEntryDate:(NSDate *)date
{
    entryDate = date;
}

- (NSDate *)entryDate
{
    return entryDate;
}
- (int)firstNumber
{
    return firstNumber;
}
- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
              [df stringFromDate:entryDate],
              firstNumber, secondNumber];
    return result;
}

- (id)init {
    return [self initWithEntryDate:[NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)theDate
{
    self = [super init];
    if (self)
    {
        entryDate = theDate;
        firstNumber = ((int)random() % 100) + 1;
        secondNumber = ((int)random() % 100) + 1;
    }
    return self;
}

@end
