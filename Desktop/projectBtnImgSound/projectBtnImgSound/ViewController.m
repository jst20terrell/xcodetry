//
//  ViewController.m
//  projectBtnImgSound
//
//  Created by Leonso Medina Lopez on 2/20/14.
//  Copyright (c) 2014 Leonziyos Productions. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "ViewController.h"


@interface ViewController ()

    

@end

@implementation ViewController

@synthesize imgFemale;
@synthesize imgMale;
@synthesize imgBackground;
@synthesize imgMain;
@synthesize btnScan;
@synthesize btnCompress;
@synthesize btnFlash;
@synthesize btnMove;
@synthesize btnStart;
@synthesize sliderBar;

//Called when view loaded
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Load images
    imgFemale = [UIImage imageNamed:@"FemaleHF.jpg"];
    imgMale = [UIImage imageNamed:@"maleHF.jpg"];
    imgBackground = [UIImage imageNamed:@"background.jpeg"];
    
    imgMain.layer.masksToBounds = YES;
    imgMain.layer.cornerRadius = 30.0;
 
    //Set Max and Min values for slider
    self.sliderBar.maximumValue = 100.0;
    self.sliderBar.minimumValue = 0.0;
    
    //Define borders corners
    btnScan.layer.cornerRadius = 10.0;
    btnScan.layer.masksToBounds = YES;
    btnCompress.layer.cornerRadius = 10.0;
    btnCompress.layer.masksToBounds = YES;
    btnFlash.layer.cornerRadius = 10.0;
    btnFlash.layer.masksToBounds = YES;
    btnMove.layer.cornerRadius = 10.0;
    btnMove.layer.masksToBounds = YES;
    btnStart.layer.cornerRadius = 10.0;
    btnStart.layer.masksToBounds = YES;
    
    /*[sliderBar set:imgBackground forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [sliderBar setDividerImage:imgBackground forLeftSegmentState:UIControlS
tateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    */
   
}



//Called when Scan button is pressed
- (IBAction)btnScanTouchDown:(UIButton *)sender
{
    
    AVAudioPlayer *audioPlayer;
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:@"sound" ofType:@"mp3"];
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [audioPlayer play];
     
    
  
}

//Called when Start button is pressed
- (IBAction)btnStartTouchDown:(UIButton *)sender
{
}

//Called when Compress button is pressed
- (IBAction)btnCompressTouchDown:(UIButton *)sender
{
}

//Called when Move button is pressed
- (IBAction)btnMoveTouchDown:(UIButton *)sender
{
}

//Called when Flash button is pressed
- (IBAction)btnFlashTouchDown:(UIButton *)sender
{
}

//Called when the slider value is changed by user
- (IBAction)sliderValueChanged:(UISlider *)sender
{
    self.txtSlider.text = [NSString stringWithFormat:@"%i",(int)sender.value];
    
}

//Called when user changes the gender 
- (IBAction)GenderChanged:(UISegmentedControl *)sender
{
    NSString *text = [sender titleForSegmentAtIndex:[sender selectedSegmentIndex]];
    
    if([text isEqualToString:@"Female"])
        self.imgMain.image = self.imgFemale;
    else
        self.imgMain.image = self.imgMale;
}



- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents
    (colorSpace,
     (const CGFloat[8]){1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f},
     (const CGFloat[2]){0.0f,1.0f},
     2);
    
    CGContextDrawLinearGradient(context,
                                gradient,
                                CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMinY(self.view.bounds)),
                                CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMaxY(self.view.bounds)),
                                0);
    
    CGColorSpaceRelease(colorSpace);
    CGContextRestoreGState(context);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
