//
//  ZYWNewViewController.m
//  ZYW百思不得其解
//
//  Created by mac on 16/6/27.
//  Copyright © 2016年 Bonway. All rights reserved.
//

#import "ZYWNewViewController.h"

@interface ZYWNewViewController ()

@end

@implementation ZYWNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.view.backgroundColor = ZYWBackGrondColor;
    //设置左边的视图
   
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" HighImage:@"MainTagSubIconClick" target:self action:@selector(leftBtnTouchUpInside)];
}
-(void)leftBtnTouchUpInside{
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
