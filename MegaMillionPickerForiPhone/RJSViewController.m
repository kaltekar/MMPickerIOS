//
//  RJSViewController.m
//  MegaMillionPickerForiPhone
//
//  Created by Stoner, Reed on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RJSViewController.h"
#import "SCLotteryEngine.h"
#import "SCBallView.h"
#import <QuartzCore/QuartzCore.h>


#define BALL1_FRAME_ORIGIN_X 0
#define BALL2_FRAME_ORIGIN_X 80
#define BALL3_FRAME_ORIGIN_X 160
#define BALL4_FRAME_ORIGIN_X 240
#define BALL5_FRAME_ORIGIN_X 320
#define BALL6_FRAME_ORIGIN_X 400

#define BALL_FRAME_ORIGIN_Y 110
#define BALL_FRAME_HEIGHT 80
#define BALL_FRAME_WIDTH 80

@implementation RJSViewController


@synthesize titleLabel;
@synthesize directionLabel;
@synthesize ball1View;
@synthesize ball2View;
@synthesize ball3View;
@synthesize ball4View;
@synthesize ball5View;
@synthesize megaballView;

@synthesize lottoEngine = _lottoEngine;
@synthesize isStartup = _isStartup;

- (void)fadeBallsIn {
//    self.ball1Label.center
//    self.ball2Label.center
//    self.ball3Label.center
//    self.ball4Label.center
//    self.ball5Label.center
//    self.megaballLabel.center
}

- (void)fadeBallsOut {
    
}

- (void) getPicks:(UITapGestureRecognizer *)recognizer {
    
    NSArray *array = [self.lottoEngine picks];
    
    if (self.isStartup) {
        self.titleLabel.hidden = NO;
        self.directionLabel.hidden = YES;
    }
    
    self.ball1View.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:0]];
    self.ball2View.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:1]];
    self.ball3View.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:2]];
    self.ball4View.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:3]];
    self.ball5View.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:4]];
    self.megaballView.numberLabel.text = [NSString stringWithFormat:@"%@",[array objectAtIndex:5]];
    
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
    
    self.isStartup = YES; 
    
    CGRect frame1 = CGRectMake(BALL1_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    CGRect frame2 = CGRectMake(BALL2_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    CGRect frame3 = CGRectMake(BALL3_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    CGRect frame4 = CGRectMake(BALL4_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    CGRect frame5 = CGRectMake(BALL5_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    CGRect frame6 = CGRectMake(BALL6_FRAME_ORIGIN_X, BALL_FRAME_ORIGIN_Y, BALL_FRAME_WIDTH, BALL_FRAME_HEIGHT);
    
    self.ball1View = [[SCBallView alloc] initWithFrame:frame1];
    self.ball2View = [[SCBallView alloc] initWithFrame:frame2];
    self.ball3View = [[SCBallView alloc] initWithFrame:frame3];
    self.ball4View = [[SCBallView alloc] initWithFrame:frame4];
    self.ball5View = [[SCBallView alloc] initWithFrame:frame5];
    self.megaballView = [[SCBallView alloc] initWithFrame:frame6];
    self.megaballView.isMegaball = YES;
 
    [self.view addSubview:self.ball1View];
    [self.view addSubview:self.ball2View];
    [self.view addSubview:self.ball3View];
    [self.view addSubview:self.ball4View];
    [self.view addSubview:self.ball5View];
    [self.view addSubview:self.megaballView];
      
    
}

- (void)viewDidUnload
{
    [self setTitleLabel:nil];
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
    if (interfaceOrientation ==  UIInterfaceOrientationPortraitUpsideDown || interfaceOrientation == UIInterfaceOrientationPortrait ) {
        return NO;
    } else {
        return YES;
    }
}

@end
