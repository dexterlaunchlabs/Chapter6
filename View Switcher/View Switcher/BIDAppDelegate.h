//
//  BIDAppDelegate.h
//  View Switcher
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIDSwitchViewController;

@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BIDSwitchViewController * switchViewController;
@end
