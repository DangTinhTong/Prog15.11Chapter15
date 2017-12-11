//
//  AddressBook.h
//  Prog15.11
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
{
    NSString *bookName;
    NSMutableArray *book;
}
-(id) initWihtName:(NSString *)name;
-(void) addCard: (AddressCard*) theCard;
-(long) entries;
-(void) list;

// Lookup address card by name --
-(AddressCard*) lookup :(NSString*) theName;
@end
