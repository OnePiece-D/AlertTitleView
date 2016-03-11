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

+ (instancetype)alertTopWithTitle:(NSString *)title {
    CGSize size = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    CGRect frame = CGRectMake(0, 0, size.width + 8, size.height + 8);
    
    CGPoint point = CGPointMake([UIScreen mainScreen].bounds.size.width / 2.f, [UIScreen mainScreen].bounds.size.height - 80);
    frame.origin = CGPointMake(point.x - size.width / 2.f, point.y - size.height / 2.f);
    
    return [[self alloc] initWithFrame:frame title:title];
}

+ (instancetype)alertTipWithFrame:(CGRect)frame title:(NSString *)title {
    return [[self alloc] initWithFrame:frame title:title];
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


- (void)titleColor:(UIColor *)color font:(UIFont *)font {
    self.titleLabel.textColor = color;
    self.titleLabel.font = font;
}



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

@end
