//
//  GXBaseViewController.m
//  GXFang
//
//  Created by James on 2018/11/15.
//  Copyright © 2018年 GX. All rights reserved.
//

#import "GXBaseViewController.h"
#import "MainViewController.h"

@interface GXBaseViewController ()

@end

@implementation GXBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"按钮文字" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
//    NSLog(@"-----");
    GXBaseViewController *vc = [GXBaseViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
