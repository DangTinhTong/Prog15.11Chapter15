//
//  main.m
//  Prog15.11
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337asx.com";
        NSString *bName= @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroom.com";
        NSString *dName =@"Jamie Baker";
        NSString *dEmail = @"jbacker@classromm.com";
        
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        
        //AddressBook *myBook = [[AddressBook alloc] initWihtName:@"Linda's Address Book"];
        
        AddressBook *myBook =[[AddressBook alloc] init];
        AddressCard *myCard;
        
        
        // Now set up fours address cards
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail ];
        [card4 setName:dName andEmail:dEmail];
        
        
        // Look up person by name
        
        NSLog(@"Stephen Kochan");
        myCard = [myBook lookup:@"Stephen Kochan"];
        if(myCard!=nil)
            [myCard print];
        else
            NSLog(@"Not found");
        
        
        // Try another lookup
        NSLog(@" HaiBo Zhang");
        myCard = [myBook lookup:@"HaiBo Zhang"];
        if(myCard!=nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        
    }
    return 0;
}
