//
//  AddressCard.h
//  Program15-10
//
//  Created by Aegis Liang on 6/6/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface AddressCard: NSObject
/*
-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;
*/
@property (copy, nonatomic) NSString *name, *email;
-(void) print;
@end
