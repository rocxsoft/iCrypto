//
//  FlipsideViewController.m
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import "FlipsideViewController.h"
#import "RootViewController.h"


@implementation FlipsideViewController

@synthesize rootViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		// Custom initialization
	}
	return self;
}


- (void)loadView {
	[super loadView];
	
	UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
	navigationBar.barStyle = UIBarStyleBlackOpaque;
	UINavigationItem *doneItem = [[UINavigationItem alloc] init];	
	UIBarButtonItem *doneItemButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(toggleView:)];
	
	[doneItem setCustomRightItem:doneItemButton animated:NO];
	[navigationBar pushNavigationItem:doneItem animated:NO];
	[self.view addSubview:navigationBar];
	
	self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
	
	[navigationBar release];
	[doneItem release];
	[doneItemButton release];
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
