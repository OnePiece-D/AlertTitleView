//
//  WYLAlertTipView.h
//  AlertTitleView
//
//  Created by ycd9 on 16/3/11.
//  Copyright © 2016年 YCD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYLAlertTipView : UIView

@property (nonatomic, strong) UILabel * titleLabel;

+ (instancetype)alertTopWithTitle:(NSString *)title;
+ (instancetype)alertTipWithFrame:(CGRect)frame title:(NSString *)title;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title;

- (void)titleColor:(UIColor *)color font:(UIFont *)font;



- (void)show;
- (void)hidden;


@end
