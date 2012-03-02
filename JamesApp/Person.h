//
//  Person.h
//  JamesApp
//
//  Created by James Walton on 02/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSString *emailAddress;
}

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *emailAddress;

+ (NSMutableArray *)people;
+ (Person *)person;
+ (Person *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
+ (Person *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andEmailAddress:(NSString *)emailAddress;
- (NSString *)fullName;

@end
