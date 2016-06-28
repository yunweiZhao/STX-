//
//  ZYWMeViewController.m
//  ZYW百思不得其解
//
//  Created by mac on 16/6/27.
//  Copyright © 2016年 Bonway. All rights reserved.
//

#import "ZYWMeViewController.h"

@interface ZYWMeViewController ()

@end

@implementation ZYWMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    //设置左边的视图
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" HighImage:@"mine-setting-icon-click" target:self action:@selector(meBtnTouchUpInside)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" HighImage:@"mine-moon-icon-click" target:self action:@selector(moonBtnTouchUpInside)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
                                            
}
-(void)meBtnTouchUpInside{
    ZYWLogFunc;
}
-(void)moonBtnTouchUpInside{
    ZYWLogFunc;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
