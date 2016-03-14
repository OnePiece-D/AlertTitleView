//
//  WYLAlertTipView.h
//  AlertTitleView
//
//  Created by ycd9 on 16/3/11.
//  Copyright © 2016年 YCD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYLAlertTipView : UIView

/**
 *  提示标题(默认白色)
 */
@property (nonatomic, strong) UILabel * titleLabel;

/**
 *  提示标题描述内容(默认白色)
 */
@property (nonatomic, strong) UILabel * descLabel;

/**
 *  按钮
 */
@property (nonatomic, strong) UIButton * button;

/**
 *  图标
 */
@property (nonatomic, strong) UIImageView * iconView;

/**
 *  背景图
 */
@property (nonatomic, strong) UIImageView * backImageView;

/**
 *  需要设置frame位置大小,添加到superView
 */
+ (instancetype)alertTipWithFrame:(CGRect)frame title:(NSString *)title;

+ (instancetype)alertTopWithTitle:(NSString *)title;
+ (instancetype)alertTopWithImage:(UIImage *)image;


- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title;
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)image; //defult height is Height /2.f

/**
 *  给titleLabel调色和字体
 */
- (void)titleColor:(UIColor *)color font:(UIFont *)font;


/**
 *  直接添加到当前屏幕上
 */
+ (void)showWithTitle:(NSString *)title;

+ (void)showWithImage:(UIImage *)image;



/**
 *  添加位图            每个控件的具体位置需要依据具体设定
 *
 *  @param frame           设置大小
 *  @param title           位图title
 *  @param button          点击按钮例如刷新什么的
 *  @param image           image
 *  @param backgroundImage backgroundImage
 */
+ (void)showWithFrame:(CGRect)frame
                title:(NSString *)title
            descTitle:(NSString *)descTitle
             button:(UIButton *)button
                image:(UIImage *)image
      backgroundImage:(UIImage *)backgroundImage;

/**
 *  显示/隐藏self
 */
- (void)show;
- (void)hidden;


@end
