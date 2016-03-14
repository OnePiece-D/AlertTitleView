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
    // Do any additional setup after loading the view, typically from a nib.
//    WYLAlertTipView * view = [WYLAlertTipView alertTopWithTitle:@"titletitletitle"];
//    [self.view addSubview:view];
//    
//    [view show];
//    [WYLAlertTipView showWithTitle:@"titletitletitletitletitle"];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [WYLAlertTipView showWithFrame:[UIScreen mainScreen].bounds title:@"title" descTitle:@"descTitle" button:button image:nil backgroundImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
