//
//  TCTabBarController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCTabBarController.h"

@interface TCTabBarController ()

@end

@implementation TCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIViewController *v1 = [[UIViewController alloc] init];
    v1.tabBarItem.title = @"精华";
    v1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    v1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    NSMutableDictionary *attris = [NSMutableDictionary dictionary];
    attris[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attris[NSForegroundColorAttributeName] = [UIColor grayColor];
    [v1.tabBarItem setTitleTextAttributes:attris forState:UIControlStateNormal];
    
    NSMutableDictionary *selectedAttris = [NSMutableDictionary dictionary];
    selectedAttris[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttris[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [v1.tabBarItem setTitleTextAttributes:selectedAttris forState:UIControlStateSelected];
    
    v1.view.backgroundColor =[UIColor redColor];
    [self addChildViewController:v1];
    
    
    UIViewController *v2 = [[UIViewController alloc] init];
    v2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    v2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    v2.tabBarItem.title = @"新帖";
    [v2.tabBarItem setTitleTextAttributes:attris forState:UIControlStateNormal];
    [v2.tabBarItem setTitleTextAttributes:selectedAttris forState:UIControlStateSelected];
    v2.view.backgroundColor =[UIColor yellowColor];
    
    [self addChildViewController:v2];
    
    UIViewController *v3 = [[UIViewController alloc] init];
    v3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    v3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    v3.tabBarItem.title = @"关注";
    v3.view.backgroundColor =[UIColor grayColor];
    [v3.tabBarItem setTitleTextAttributes:attris forState:UIControlStateNormal];
    [v3.tabBarItem setTitleTextAttributes:selectedAttris forState:UIControlStateSelected];
    [self addChildViewController:v3];
    
    UIViewController *v4 = [[UIViewController alloc] init];
    v4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    v4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    v4.tabBarItem.title = @"我";
    v4.view.backgroundColor =[UIColor blueColor];
    [v4.tabBarItem setTitleTextAttributes:attris forState:UIControlStateNormal];
    [v4.tabBarItem setTitleTextAttributes:selectedAttris forState:UIControlStateSelected];
    [self addChildViewController:v4];
}



@end
