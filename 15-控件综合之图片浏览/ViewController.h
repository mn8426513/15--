//
//  ViewController.h
//  15-控件综合之图片浏览
//
//  Created by Mac on 14-9-3.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *imageNo;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *labelDesc;

@property (weak, nonatomic) IBOutlet UIView *setView;
- (IBAction)setBtn:(UIButton *)sender;


- (IBAction)slider:(UISlider *)sender;


- (IBAction)night:(UISwitch *)sender;


- (IBAction)changeSize:(UISlider *)sender;

@end

