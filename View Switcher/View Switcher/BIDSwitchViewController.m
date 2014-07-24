//
//  BIDSwitchViewController.m
//  View Switcher
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDYellowViewController.h"
#import "BIDBlueViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController
@synthesize yellowViewController;
@synthesize blueViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blueViewController = [[BIDBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    }
    else{
        self.yellowViewController = nil;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)switchViews:(id)sender{
    [UIView beginAnimations:@"View Flip" context:nil]; [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    if (self.yellowViewController.view.superview == nil) { if (self.yellowViewController == nil) {
        self.yellowViewController =
        [[BIDYellowViewController alloc] initWithNibName:@"YellowView"
                                                  bundle:nil];
    }
        [UIView setAnimationTransition:
         UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0]; } else {
            if (self.blueViewController == nil) {
                self.blueViewController =
                [[BIDBlueViewController alloc] initWithNibName:@"BlueView"
                                                        bundle:nil];
            }
            [UIView setAnimationTransition:
             UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
            [self.yellowViewController.view removeFromSuperview];
            [self.view insertSubview:self.blueViewController.view atIndex:0]; }
    [UIView commitAnimations];
}
@end
