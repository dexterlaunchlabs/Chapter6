//
//  BIDSwitchViewController.h
//  View Switcher
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDYellowViewController;
@class BIDBlueViewController;
@interface BIDSwitchViewController : UIViewController

@property (strong, nonatomic) BIDYellowViewController * yellowViewController;
@property (strong, nonatomic) BIDBlueViewController * blueViewController;

-(IBAction)switchViews:(id)sender;
@end
