//
//  BaseTabBarController.m
//  AppDemo
//
//  Created by Eli on 2018/10/4.
//  Copyright © 2018年 love_Me. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   UIColor *selColor = [UIColor colorWithRed:0 green:(190 / 255.0) blue:(12 / 255.0) alpha:1];
   [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selColor} forState:UIControlStateSelected];
   
   NSArray *items = @[
                        @{@"class" : @"LMHomeViewController",
                          @"title" : @"微信",
                          @"tabbar_img" : @"tabbar_home",
                          @"tabbar_selimg" : @"tabbar_homeH"},
                        
                        @{@"class" : @"LMContactViewController",
                          @"title" : @"通讯录",
                          @"tabbar_img" : @"tabbar_contact",
                          @"tabbar_selimg" : @"tabbar_contactH"},
                        
                        @{@"class" : @"LMDiscoverViewController",
                          @"title" : @"发现",
                          @"tabbar_img" : @"tabbar_discover",
                          @"tabbar_selimg" : @"tabbar_discoverH"},
                        
                        @{@"class" : @"LMMeViewController",
                          @"title" : @"我",
                          @"tabbar_img" : @"tabbar_me",
                          @"tabbar_selimg" : @"tabbar_meH"}];
   [self setMainTabBarItems:items];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setMainTabBarItems:(NSArray *)items {
   [items enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
      UIViewController *VC = [[NSClassFromString(obj[@"class"]) alloc] init];
      VC.title = obj[@"title"];
      VC.tabBarItem.image = [UIImage imageNamed:obj[@"tabbar_img"]];
      VC.tabBarItem.selectedImage = [[UIImage imageNamed:obj[@"tabbar_selimg"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
      BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:VC];
      [self addChildViewController:nav];
   }];
}
@end
