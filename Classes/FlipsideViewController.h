//
//  FlipsideViewController.h
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface FlipsideViewController : UIViewController {

	RootViewController *rootViewController;
}

@property (nonatomic, assign) RootViewController *rootViewController;

- (IBAction)toggleView:(id)sender;

@end
