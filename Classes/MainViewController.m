//
//  MainViewController.m
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import "MainViewController.h"
#import "RootViewController.h"
#import "MainView.h"
#import "FlipsideView.h"


@implementation MainViewController

@synthesize rootViewController;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		// Custom initialization
	}
	return self;
}


- (void)loadView {
	[super loadView];

	UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
	infoButton.frame = CGRectMake(290, 430, 20, 20);
	[infoButton addTarget:self action:@selector(toggleView:) forControlEvents:UIControlEventTouchDown];
	
	// Add the Info button as a subview of the main view
	[self.view addSubview:infoButton];
}


- (IBAction)toggleView:(id)sender {
	[rootViewController toggleView:self];
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
	[super dealloc];
}


@end
