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
@synthesize titleLabel;
@synthesize directionLabel;
@synthesize ball1ImageView;
@synthesize ball2ImageView;
@synthesize ball3ImageView;
@synthesize ball4ImageView;
@synthesize ball5ImageView;
@synthesize megaballImageView;

@synthesize lottoEngine = _lottoEngine;
@synthesize isStartup = _isStartup;

- (void) getPicks:(UITapGestureRecognizer *)recognizer {
    
    NSArray *array = [self.lottoEngine picks];
    
    if (self.isStartup) {
        self.titleLabel.hidden = NO;
        self.ball1Label.hidden = NO;
        self.ball2Label.hidden = NO;
        self.ball3Label.hidden = NO;
        self.ball4Label.hidden = NO;
        self.ball5Label.hidden = NO;
        self.megaballLabel.hidden = NO;
        self.directionLabel.hidden = YES;
        self.ball1ImageView.hidden = NO;
        self.ball2ImageView.hidden = NO;
        self.ball3ImageView.hidden = NO;
        self.ball4ImageView.hidden = NO;
        self.ball5ImageView.hidden = NO;
        self.megaballImageView.hidden = NO;
    }
    
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

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {

    [self getPicks:nil];
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _lottoEngine = [[SCLotteryEngine alloc] init];
    
    
    
    UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(getPicks:)];
    [self.view addGestureRecognizer:gr];
    

    self.titleLabel.hidden = YES;
    self.ball1Label.hidden = YES;
    self.ball2Label.hidden = YES;
    self.ball3Label.hidden = YES;
    self.ball4Label.hidden = YES;
    self.ball5Label.hidden = YES;
    self.megaballLabel.hidden = YES;
    self.directionLabel.hidden = NO;
    self.ball1ImageView.hidden = YES;
    self.ball2ImageView.hidden = YES;
    self.ball3ImageView.hidden = YES;
    self.ball4ImageView.hidden = YES;
    self.ball5ImageView.hidden = YES;
    self.megaballImageView.hidden = YES;

    self.isStartup = YES; 
    
    
}

- (void)viewDidUnload
{
    [self setBall1Label:nil];
    [self setBall2Label:nil];
    [self setBall3Label:nil];
    [self setBall4Label:nil];
    [self setBall5Label:nil];
    [self setMegaballLabel:nil];
    [self setTitleLabel:nil];
    [self setBall1ImageView:nil];
    [self setBall2ImageView:nil];
    [self setBall2ImageView:nil];
    [self setBall4ImageView:nil];
    [self setBall5ImageView:nil];
    [self setMegaballImageView:nil];
    [self setDirectionLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self becomeFirstResponder];
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
