//
//  SCBallView.m
//  MegaMillionPickerForiPhone
//
//  Created by Reed Stoner on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SCBallView.h"
#import <QuartzCore/QuartzCore.h>

@implementation SCBallView

@synthesize numberLabel = _numberLabel;
@synthesize imageView = _imageView;
@synthesize isMegaball;

#define LABEL_FRAME_ORIGIN_X 19
#define LABEL_FRAME_ORIGIN_y 19
#define LABEL_FRAME_HEIGHT  42
#define LABEL_FRAME_WIDTH   42
#define LABEL_FONT_SIZE     36


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setBackgroundColor:[UIColor clearColor]];
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        _imageView.backgroundColor = [UIColor clearColor];
        [self addSubview:_imageView];
        
        CGRect numberLabelFrame = CGRectMake(LABEL_FRAME_ORIGIN_X,
                                             LABEL_FRAME_ORIGIN_y,
                                             LABEL_FRAME_WIDTH,
                                             LABEL_FRAME_HEIGHT);
        
        _numberLabel = [[UILabel alloc] initWithFrame:numberLabelFrame];
        
        
        [_numberLabel setTextAlignment:UITextAlignmentCenter];
        [_numberLabel setFont:[UIFont systemFontOfSize:LABEL_FONT_SIZE]];
        [_numberLabel setTextColor:[UIColor blackColor]];
        [_numberLabel setBackgroundColor:[UIColor clearColor]];
        
        
//        _numberLabel.layer.borderColor = [UIColor redColor].CGColor;
//        _numberLabel.layer.borderWidth = 1.0f;
        
        [self addSubview:_numberLabel];
        
        isMegaball = NO;
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{   
    
//    self.layer.borderColor = [UIColor redColor].CGColor;
//    self.layer.borderWidth = 1.0f;
    if (isMegaball) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"yball" ofType:@"PNG"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:filePath];
        self.imageView.image = image;
    } else {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"wball" ofType:@"PNG"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:filePath];
        self.imageView.image = image;
    }
}

@end
