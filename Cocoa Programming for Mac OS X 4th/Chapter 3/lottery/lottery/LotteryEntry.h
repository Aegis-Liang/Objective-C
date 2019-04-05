//
//  LotteryEntry.h
//  lottery
//
//  Created by Aegis Liang on 3/31/19.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

//- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;
- (id)initWithEntryDate:(NSDate *)theDate;
@end
