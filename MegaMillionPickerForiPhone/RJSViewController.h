//
//  RJSViewController.h
//  MegaMillionPickerForiPhone
//
//  Created by Stoner, Reed on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCLotteryEngine;

@interface RJSViewController : UIViewController

@property (nonatomic, strong) SCLotteryEngine *lottoEngine;
@property BOOL isStartup;

@property (weak, nonatomic) IBOutlet UILabel *ball1Label;
@property (weak, nonatomic) IBOutlet UILabel *ball2Label;
@property (weak, nonatomic) IBOutlet UILabel *ball3Label;
@property (weak, nonatomic) IBOutlet UILabel *ball4Label;
@property (weak, nonatomic) IBOutlet UILabel *ball5Label;
@property (weak, nonatomic) IBOutlet UILabel *megaballLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *directionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ball1ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *ball2ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *ball3ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *ball4ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *ball5ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *megaballImageView;




- (void) getPicks:(UITapGestureRecognizer *)recognizer;

@end
