//
//  ViewController.m
//  15-控件综合之图片浏览
//
//  Created by Mac on 14-9-3.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    NSArray *array;

}

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];

       NSBundle *mainBundle = [NSBundle mainBundle];
    
       NSString *absolutePath = [mainBundle pathForResource:@"labelDesc" ofType:@"plist"];
    
    
       array = [NSArray arrayWithContentsOfFile:absolutePath];
    
    
    
}



- (IBAction)setBtn:(UIButton *)sender {
       CGRect tempFrame =  _setView.frame;
    
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.5];
    
    if(_setView.frame.origin.y == self.view.frame.size.height){
       tempFrame.origin.y -= _setView.frame.size.height;
    }else{
        tempFrame.origin.y += _setView.frame.size.height;
    }
    
    
       _setView.frame = tempFrame;
    [UIView commitAnimations];
}

- (IBAction)slider:(UISlider *)sender {
    //    1.改变数字的序列
    _imageNo.text = [NSString stringWithFormat:@"%.0f/16",[sender value]+1];
    NSLog(@"%f",[sender value]);
    //    2.改变图片
    
    int No = (int)[sender value];
    
    NSString *imageName = [NSString stringWithFormat:@"%i.png",No];
    
    UIImage *image =[UIImage imageNamed:imageName];
    
    [_imageView setImage:image];
    

    //    3.改变图片的描述
 
      
    int num = (int)(sender.value+0.5);
    
 
    _labelDesc.text = array[num];
   
    _labelDesc.textAlignment = NSTextAlignmentLeft;
    
    _labelDesc.numberOfLines = 5;
    
    
    _labelDesc.textColor =[ UIColor redColor];
    

    
        
    
    
    
    
}

- (IBAction)night:(UISwitch *)sender {
    if(sender.on){
        self.view.backgroundColor = [UIColor grayColor];
       
    }else {
    
        self.view.backgroundColor =[UIColor whiteColor ];
    
    }
        
}

- (IBAction)changeSize:(UISlider *)sender {
    
    _imageView.transform = CGAffineTransformMakeScale(sender.value, sender.value);
    
}
@end
