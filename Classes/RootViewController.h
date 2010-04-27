//
//  RootViewController.h
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;
@class FlipsideViewController;

@interface RootViewController : UIViewController {
	MainViewController *mainViewController;
	FlipsideViewController *flipsideViewController;
}

@property (nonatomic, retain) MainViewController *mainViewController;
@property (nonatomic, retain) FlipsideViewController *flipsideViewController;

- (IBAction)toggleView:(id)sender;

@end
