# AlertTitleView
小提示

//直接显示title
[WYLAlertTipView showWithTitle:@"titletitletitletitletitle"];

//直接显示占位图
UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
[button setTitle:@"button" forState:UIControlStateNormal];
[WYLAlertTipView showWithFrame:[UIScreen mainScreen].bounds title:@"title" descTitle:@"descTitle" button:button image:nil backgroundImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];

//直接显示icon
[WYLAlertTipView showWithImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];

//这种可以设置icon的各种属性
WYLAlertTipView * handle = [WYLAlertTipView alertTopWithImage:[UIImage imageNamed:@"29x58PICIjD_1024.jpg"]];
handle.iconView.layer.cornerRadius = 20;
handle.iconView.clipsToBounds = YES;
[handle show];