//
//  Cryptopp552AppDelegate.m
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import "Cryptopp552AppDelegate.h"
#import "RootViewController.h"

@implementation Cryptopp552AppDelegate


@synthesize window;
@synthesize rootViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	RootViewController *viewController = [[RootViewController alloc] init];
	self.rootViewController = viewController;
	[viewController release];
	
	[window addSubview:[rootViewController view]];
}


- (void)dealloc {
	[rootViewController release];
	[window release];
	[super dealloc];
}

@end
