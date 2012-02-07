//
//  RJSViewController.m
//  MegaMillionPickerForiPhone
//
//  Created by Stoner, Reed on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RJSViewController.h"
#import "SCLotteryEngine.h"

@implementation RJSViewController

@synthesize ball1Label;
@synthesize ball2Label;
@synthesize ball3Label;
@synthesize ball4Label;
@synthesize ball5Label;
@synthesize megaballLabel;
@synthesize lottoEngine = _lottoEngine;


- (void) getPicks:(UITapGestureRecognizer *)recognizer {
    
    NSArray *array = [self.lottoEngine picks];
    
    self.ball1Label.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:0]];
    self.ball2Label.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:1]];
    self.ball3Label.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:2]];
    self.ball4Label.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:3]];
    self.ball5Label.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:4]];
    self.megaballLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:5]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	_lottoEngine = [[SCLotteryEngine alloc] init];
    
    UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(getPicks:)];
    [self.view addGestureRecognizer:gr];
    
}

- (void)viewDidUnload
{
    [self setBall1Label:nil];
    [self setBall2Label:nil];
    [self setBall3Label:nil];
    [self setBall4Label:nil];
    [self setBall5Label:nil];
    [self setMegaballLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
