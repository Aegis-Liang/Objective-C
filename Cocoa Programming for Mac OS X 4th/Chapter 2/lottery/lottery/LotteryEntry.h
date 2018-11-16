//
//  LotteryEntry.h
//  lottery
//
//  Created by Aegis Liang on 11/16/18.
//  Copyright © 2018 X. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;
- (id)initWithEntryDate:(NSDate *)theDate;
@end
