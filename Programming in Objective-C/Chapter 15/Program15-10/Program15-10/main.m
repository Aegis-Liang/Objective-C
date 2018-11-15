//
//  main.m
//  Program15-10
//
//  Created by Aegis Liang on 6/6/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// This program introduces collection in class

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Below code is from Program15-10
        /*
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card1 print];
         */
        
        /*
        // Below code is from Program15-11
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card2 setName: bName];
        [card2 setEmail: bEmail];
        [card1 print];
        [card2 print];
         */

        // Below code is from Program15-12
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        // Now set up four address cards
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card2 setName: bName];
        [card2 setEmail: bEmail];
        [card3 setName: cName];
        [card3 setEmail: cEmail];
        [card4 setName: dName];
        [card4 setEmail: dEmail];

        /*
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
         */
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        // List all the entries in the book now
        [myBook list];
        
        // Below code is from Program15-13
        // Look up a person by name
        AddressCard *myCard;
        NSLog (@"Stephen Kochan");
        myCard = [myBook lookup: @"stephen kochan"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        // Try another lookup
        NSLog (@"Haibo Zhang");
        myCard = [myBook lookup: @"Haibo Zhang"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Below code is from Program15-14
        // Look up a person by name
        NSLog (@"Lookup: Stephen Kochan");
        myCard = [myBook lookup: @"Stephen Kochan"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Now remove the entry from the phone book
        [myBook removeCard: myCard];
        [myBook list];
    }
    return 0;
}
