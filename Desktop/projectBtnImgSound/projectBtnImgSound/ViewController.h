//
//  ViewController.h
//  projectBtnImgSound
//
//  Created by Leonso Medina Lopez on 2/20/14.
//  Copyright (c) 2014 Leonziyos Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgMain;
@property (strong, nonatomic) IBOutlet UISegmentedControl *selectorMaleFemale;
@property (strong, nonatomic) IBOutlet UIButton *btnScan;
@property (strong, nonatomic) IBOutlet UIButton *btnStart;
@property (strong, nonatomic) IBOutlet UIButton *btnCompress;
@property (strong, nonatomic) IBOutlet UIButton *btnMove;
@property (strong, nonatomic) IBOutlet UIButton *btnFlash;
@property (strong, nonatomic) IBOutlet UIView *viewFooter;
@property (strong, nonatomic) IBOutlet UITextField *txtSlider;

@property (strong, nonatomic) UIImage *imgFemale;
@property (strong, nonatomic) UIImage *imgMale;
@property (strong, nonatomic) UIImage *imgBackground;
@property (strong, nonatomic) IBOutlet UISlider *sliderBar;

@end
