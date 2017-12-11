//
//  AddressCard.m
//  Prog15.11
//
//  Created by admin on 12/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize  name, email;
-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    self.name = theName;
    self.email = theEmail;
}
-(void) print
{
    NSLog(@"=========================");
    NSLog(@"                         ");
    NSLog(@" %-31s",[name UTF8String]);
    NSLog(@" %-31s",[email UTF8String]);
    NSLog(@"|                        |");
    NSLog(@"|                        |");
    NSLog(@"=========================");
    
    
}
@end
