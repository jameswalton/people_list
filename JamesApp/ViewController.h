//
//  ViewController.h
//  JamesApp
//
//  Created by James Walton on 01/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *peopleListArray;
}

@property (strong, nonatomic) NSArray *peopleListArray;

@end
