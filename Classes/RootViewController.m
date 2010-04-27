//
//  RootViewController.m
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"
#import "FlipsideViewController.h"


@implementation RootViewController

@synthesize mainViewController;
@synthesize flipsideViewController;


- (void)loadView {
	[super loadView];
	
	MainViewController *viewController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = viewController;
	[viewController release];
	
	viewController.rootViewController = self;
	self.view.backgroundColor = [UIColor blackColor];
	[self.view addSubview:mainViewController.view];
}


- (void)loadFlipsideViewController {
	
	FlipsideViewController *viewController = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	self.flipsideViewController = viewController;
	flipsideViewController.rootViewController = self;
	[viewController release];
}


- (IBAction)toggleView:(id)sender {	
	/*
	 This method is called when the info or Done button is pressed.
	 It flips the displayed view from the main view to the flipside view and vice-versa.
	 */
	if (flipsideViewController == nil) {
		[self loadFlipsideViewController];
	}
	
	UIView *mainView = mainViewController.view;
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1];
	[UIView setAnimationTransition:([mainView superview] ? UIViewAnimationTransitionFlipFromLeft : UIViewAnimationTransitionFlipFromRight) forView:self.view cache:YES];
	
	UIView *flipsideView = flipsideViewController.view;
	if ([mainView superview] != nil) {
		[mainView removeFromSuperview];
		[self.view addSubview:flipsideView];
	} else {
		[flipsideView removeFromSuperview];
		[self.view addSubview:mainView];
	}
	[UIView commitAnimations];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[mainViewController release];
	[flipsideViewController release];
	[super dealloc];
}


@end
