//
//  AddressBook.m
//  Prog15.11
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
-(id) initWithName:(NSString *)name
{
    self = [super init];
    if(self){
        bookName =[[NSString alloc] initWithString:name];
        book =  [[NSMutableArray alloc] init];
        
    }
    return  self;
    
}

//-(id)  init{
  //  return [self initWihtName:@"NoName"];
//}

-(void) addCard:(AddressCard *)theCard
{
    
    [book addObject:theCard];
    
}

-(long) entries
{
    return  [book count];
    
}

-(void) list
{
    
    NSLog(@"============Contents of: %@==========",bookName );
    for (AddressCard *theCard in book)
        NSLog(@"%-20s   %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
    
}
-(AddressCard*) lookup:(NSString *)theName
{
    for( AddressCard *nextCard in book)
        
        if([nextCard.name caseInsensitiveCompare: theName]==NSOrderedSame)
            return nextCard;
    return nil;
}
@end

