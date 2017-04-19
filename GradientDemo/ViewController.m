//
//  ViewController.m
//  GradientDemo
//
//  Created by wangliya on 2017/4/19.
//  Copyright © 2017年 wangliya. All rights reserved.
//

#import "ViewController.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    gradientLayer.frame = self.view.frame;
    
    //渐变的方向,可尝试修改看效果
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    //渐变的位置
    gradientLayer.locations = @[@(0.25f) ,@(1.0f)];
//    gradientLayer.colors = @[(__bridge id)UIColorFromRGB(0xff9700).CGColor,
//                             (__bridge id)UIColorFromRGB(0xf47b00).CGColor];
    //渐变颜色
    gradientLayer.colors = @[(__bridge id)[UIColor whiteColor].CGColor,(__bridge id)[UIColor blackColor].CGColor];
    
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
