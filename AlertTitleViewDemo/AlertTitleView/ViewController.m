//
//  ViewController.m
//  AlertTitleView
//
//  Created by ycd9 on 16/3/11.
//  Copyright © 2016年 YCD. All rights reserved.
//

#import "ViewController.h"

#import "WYLAlertTipView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor yellowColor];
    
    //直接显示title
//    [WYLAlertTipView showWithTitle:@"titletitletitletitletitle"];
    //直接显示占位图
//    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setTitle:@"button" forState:UIControlStateNormal];
//    [WYLAlertTipView showWithFrame:[UIScreen mainScreen].bounds title:@"title" descTitle:@"descTitle" button:button image:nil backgroundImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];
//    [WYLAlertTipView showWithImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];
    //这种可以设置icon的各种属性
    WYLAlertTipView * handle = [WYLAlertTipView alertTopWithImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];
    handle.iconView.layer.cornerRadius = 20;
    handle.iconView.clipsToBounds = YES;
    [handle show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
