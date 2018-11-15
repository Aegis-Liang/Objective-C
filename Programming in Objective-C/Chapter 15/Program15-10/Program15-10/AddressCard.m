//
//  AddressCard.m
//  Program15-10
//
//  Created by Aegis Liang on 6/6/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

#import "AddressCard.h"
@implementation AddressCard {
    NSString *name;
    NSString *email;
}

/*
-(void) setName: (NSString *) theName {
    name = [NSString stringWithString: theName]; }

-(void) setEmail: (NSString *) theEmail {
    email = [NSString stringWithString: theEmail]; }
*/

/*
-(void) setName: (NSString *) theName {
    if (name != theName)
        name = [NSString stringWithString: theName];
}
-(void) setEmail: (NSString *) theEmail {
    if (email != theEmail)
        email = [NSString stringWithString: theEmail];
}


-(NSString *) name {
    return name; }

-(NSString *) email {
    return email; }
 */

@synthesize name, email;

-(void) print {
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-31s |", [name UTF8String]);
    NSLog (@"| %-31s |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"====================================");
}
@end
