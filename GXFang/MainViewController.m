//
//  MianViewController.m
//  GXFang
//
//  Created by James on 2018/11/15.
//  Copyright © 2018年 GX. All rights reserved.
//

#import "MainViewController.h"
#import "GXNavigationBaseController.h"
#import "GXHomeViewController.h"
#import "GXDiscoveryViewController.h"
#import "GXFollowViewController.h"
#import "GXUserCenterViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *titleArray = @[@"首页", @"发现", @"关注",@"我的"];
    NSArray *imageArray = @[@"home_tabbar",@"discovery_tabbar",@"follow_tabbar",@"userCenter_tabbar"];
    
    self.viewControllers = @[[[GXNavigationBaseController alloc] initWithRootViewController:[GXHomeViewController new]],
                             [[GXNavigationBaseController alloc] initWithRootViewController:[GXDiscoveryViewController new]],
                             [[GXNavigationBaseController alloc] initWithRootViewController:[GXFollowViewController new]],
                             [[GXNavigationBaseController alloc] initWithRootViewController:[GXUserCenterViewController new]]];
    
    for (int i = 0; i < self.viewControllers.count; ++i) {
        UIViewController *vc = self.viewControllers[i];
        vc.tabBarItem.title  = titleArray[i];
        vc.tabBarItem.image = [UIImage imageNamed:imageArray[i]];
    }
}

@end
