//
//  Person.m
//  JamesApp
//
//  Created by James Walton on 02/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

static NSMutableArray *people = nil;

@implementation Person

@synthesize firstName, lastName, emailAddress;

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

+ (NSMutableArray *)people
{
    if (!people) {
        people = [[NSMutableArray alloc] init];
        [people addObject:[Person initWithFirstName:@"James" andLastName:@"Walton"]];
        [people addObject:[Person initWithFirstName:@"Tom" andLastName:@"Blakemore"]];
        [people addObject:[Person initWithFirstName:@"Jason" andLastName:@"Carpenter"]];
        [people addObject:[Person initWithFirstName:@"Ben" andLastName:@"Cross"]];
        [people addObject:[Person initWithFirstName:@"Ben" andLastName:@"Copsey"]];
        [people addObject:[Person initWithFirstName:@"Matt" andLastName:@"Hasler"]];
        [people addObject:[Person initWithFirstName:@"Tom" andLastName:@"Holland"]];
    }
    return people;
}

+ (Person *)person
{
    return [[Person alloc] init];
}

+ (Person *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName
{
    Person *person = [Person person];
    [person setFirstName:firstName];
    [person setLastName:lastName];
    return person;
}

+ (Person *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andEmailAddress:(NSString *)emailAddress
{
    Person *person = [Person initWithFirstName:firstName andLastName:lastName];
    [person setEmailAddress:emailAddress];
    return person;
}

@end
