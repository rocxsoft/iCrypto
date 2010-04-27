//
//  Cryptopp552AppDelegate.h
//  CryptoPhone
//
//  Created by Mark Thibault on 4/17/10.
//  Copyright Rocx Software Corp. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface Cryptopp552AppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	RootViewController *rootViewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) RootViewController *rootViewController;

@end

