//
//  AddressBook.h
//  Program15-10
//
//  Created by Aegis Liang on 6/7/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h" 
@interface AddressBook: NSObject
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;
-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;
@end
