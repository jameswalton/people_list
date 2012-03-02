//
//  ViewController.m
//  JamesApp
//
//  Created by James Walton on 01/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "PeopleViewController.h"

@implementation ViewController

@synthesize navigationController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UINavigationController *nc = [[UINavigationController alloc] init];
    // Set up size of view controller
    
    [[nc view] setFrame:[[self view] bounds]];
    [[self view] addSubview:nc.view];
    
    // Add the nc's view as a sub view of [self view]
    
    PeopleViewController *peopleViewController = [[PeopleViewController alloc] initWithNibName:@"PeopleViewController" bundle:nil];
    NSArray *viewControllers = [[NSArray alloc] initWithObjects:peopleViewController, nil];
    
    // Add viewcontrollers to navigationcontroller
    
    [self setNavigationController:nc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
