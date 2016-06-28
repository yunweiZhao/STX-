//
//  ZYWtabBar.m
//  ZYW百思不得其解
//
//  Created by mac on 16/6/27.
//  Copyright © 2016年 Bonway. All rights reserved.
//

#import "ZYWtabBar.h"

@interface ZYWtabBar()
@property (nonatomic,weak)UIButton *button;
@end
@implementation ZYWtabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:(UIControlStateNormal)];
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:(UIControlStateHighlighted)];
        [self addSubview:button];
        self.button = button;
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    //设置中间自定义的按钮的位置跟居中位置
    CGFloat width = self.width;
    CGFloat height = self.height;
    
    self.button.x = 0;
    self.button.y = 0;
    self.button.width =self.button.currentBackgroundImage.size.width;
    self.button.height = self.button.currentBackgroundImage.size.height;
    self.button.center = CGPointMake(width*0.5, height*0.5);
    
//    //设置其他按钮的位置
    CGFloat buttonY = 0;
    CGFloat buttonW = width/5.0;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        //因为已经设置好自定义的button位置   所以要判断一下  是不是自定义的
        if (![button isKindOfClass:[UIControl class]]||button == self.button){ continue;
            
        }else{
        CGFloat buttonX = buttonW * ((index > 1)?(index+1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
        }
    }
}
@end
