//
//  RJSViewController.h
//  MegaMillionPickerForiPhone
//
//  Created by Stoner, Reed on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCLotteryEngine;
@class SCBallView;

@interface RJSViewController : UIViewController

@property (nonatomic, strong) SCLotteryEngine *lottoEngine;
@property BOOL isStartup;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *directionLabel;
@property (strong, nonatomic) SCBallView *ball1View;
@property (strong, nonatomic) SCBallView *ball2View;
@property (strong, nonatomic) SCBallView *ball3View;
@property (strong, nonatomic) SCBallView *ball4View;
@property (strong, nonatomic) SCBallView *ball5View;
@property (strong, nonatomic) SCBallView *megaballView;




- (void) getPicks:(UITapGestureRecognizer *)recognizer;

@end
