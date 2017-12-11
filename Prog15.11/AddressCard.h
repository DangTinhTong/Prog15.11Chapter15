//
//  AddressCard.h
//  Prog15.11
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
    
}

@property (copy, nonatomic) NSString *name, *email;
-(void) print;
-(void) setName: (NSString*) theName andEmail: (NSString*) theEmail;

@end
