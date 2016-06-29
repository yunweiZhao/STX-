//
//  UIBarButtonItem+ZYWExtension.m
//  ZYW百思不得其解
//
//  Created by mac on 16/6/28.
//  Copyright © 2016年 Bonway. All rights reserved.
//

#import "UIBarButtonItem+ZYWExtension.h"

@implementation UIBarButtonItem (ZYWExtension)
+(instancetype)itemWithImage:(NSString *)image HighImage:(NSString *)highimage target:(id)target
                      action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highimage] forState:(UIControlStateHighlighted)];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [[self alloc]initWithCustomView:button];
}
@end
