//
//  UIBarButtonItem+ZYWExtension.h
//  ZYW百思不得其解
//
//  Created by mac on 16/6/28.
//  Copyright © 2016年 Bonway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZYWExtension)
+(instancetype)itemWithImage:(NSString *)image HighImage:(NSString *)highimage target:(id)target
                      action:(SEL)action;
@end
