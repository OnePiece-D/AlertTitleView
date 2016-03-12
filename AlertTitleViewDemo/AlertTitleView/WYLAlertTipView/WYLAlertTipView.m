//
//  WYLAlertTipView.m
//  AlertTitleView
//
//  Created by ycd9 on 16/3/11.
//  Copyright © 2016年 YCD. All rights reserved.
//

#import "WYLAlertTipView.h"


@implementation WYLAlertTipView

{
    NSString * _title;
}


#pragma mark -initWithPoint OR size-
+ (instancetype)alertTopWithTitle:(NSString *)title {
    CGSize size = [self sizeTitle:title font:[UIFont systemFontOfSize:14]];
    CGRect frame = CGRectMake(0, 0, size.width + 8, size.height + 8);
    
    CGPoint point = CGPointMake([UIScreen mainScreen].bounds.size.width / 2.f, [UIScreen mainScreen].bounds.size.height - 80);
    frame.origin = CGPointMake(point.x - size.width / 2.f, point.y - size.height / 2.f);
    
    return [[self alloc] initWithFrame:frame title:title];
}

+ (instancetype)alertTipWithFrame:(CGRect)frame title:(NSString *)title {
    return [[self alloc] initWithFrame:frame title:title];
}


+ (void)showWithFrame:(CGRect)frame
                title:(NSString *)title
            descTitle:(NSString *)descTitle
               button:(UIButton *)button
                image:(UIImage *)image
      backgroundImage:(UIImage *)backgroundImage {
    //添加视图
    WYLAlertTipView * tipView = [[WYLAlertTipView alloc] initWithFrame:frame title:title];
    UIView * currentView = [self getCurrentWindow];
    [currentView addSubview:tipView];
    [currentView bringSubviewToFront:tipView];
    
    //设置内容属性
    //现在是空的
}

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title {
    if ([super initWithFrame:frame]) {
        _title = title;
        
        self.layer.cornerRadius = 5;
        
        self.titleLabel.frame = self.bounds;
        self.titleLabel.text = title;
        
    }
    return self;
}

#pragma mark -initWithTitle(没有frame)-
+ (void)showWithTitle:(NSString *)title {
    WYLAlertTipView * view = [WYLAlertTipView alertTopWithTitle:title];
    UIView * currentWindow = [self getCurrentWindow];
    [currentWindow addSubview:view];
    [currentWindow bringSubviewToFront:view];
    
    [view show];
}

#pragma mark -设置控件样式-

- (void)titleColor:(UIColor *)color font:(UIFont *)font {
    self.titleLabel.textColor = color;
    self.titleLabel.font = font;
}


#pragma mark -设置显示-
- (void)show {
    self.backgroundColor = [UIColor grayColor];
    [self addSubview:self.titleLabel];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hidden];
    });
}

- (void)hidden {
    [UIView animateWithDuration:0.53 animations:^{
        self.alpha = 0.01;
    } completion:^(BOOL finished) {
        [self.titleLabel removeFromSuperview];
        [self removeFromSuperview];
    }];
    
}

#pragma mark -获取superView视图-
//获取当前屏幕显示的window
+ (UIView *)getCurrentWindow
{
    UIWindow * window = [[[UIApplication sharedApplication] windows] lastObject];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    return window;
}

//获取当前屏幕显示的viewcontroller (暂时无用测试的也没有什么效果)
- (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}

#pragma mark -工具-
+ (CGSize)sizeTitle:(NSString *)title font:(UIFont *)font {
    return [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
}

#pragma mark -lazyloading-

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 0;
        
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor whiteColor];
    }
    return _titleLabel;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.textAlignment = NSTextAlignmentCenter;
        _descLabel.numberOfLines = 0;
        
        _descLabel.font = [UIFont systemFontOfSize:12];
        _descLabel.textColor = [UIColor whiteColor];
    }
    return _descLabel;
}

@end
