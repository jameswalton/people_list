//
//  PeopleViewController.h
//  JamesApp
//
//  Created by James Walton on 02/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeopleViewController : UITableViewController {
    NSMutableArray *people;
}

@property (strong, nonatomic) NSMutableArray *people;

@end
