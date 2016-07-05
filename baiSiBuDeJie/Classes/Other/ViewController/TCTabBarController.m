//
//  TCTabBarController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCTabBarController.h"
#import "TCEssenceViewController.h"
#import "TCNewViewController.h"
#import "TCFriendTrendsViewController.h"
#import "TCMeViewController.h"
#import "TCTabBar.h"

#import "TCNavgationController.h"

@interface TCTabBarController ()

@end

@implementation TCTabBarController

+(void)initialize {
    
    NSMutableDictionary *attris = [NSMutableDictionary dictionary];
    attris[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attris[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttris = [NSMutableDictionary dictionary];
    selectedAttris[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttris[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    //拿到 uiatbBarItem 的外观对象 同一设置文子的属性
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    [tabBarItem setTitleTextAttributes:attris forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:selectedAttris forState:UIControlStateSelected];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.tabBar = [[TCTabBar alloc] init];
    [self setValue:[[TCTabBar alloc] init] forKeyPath:@"tabBar"];
    
    
    [self setUpChildVc:[[TCEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self setUpChildVc:[[TCNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    [self setUpChildVc:[[TCFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setUpChildVc:[[TCMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    
    
    
}
-(void)setUpChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    //vc.view.backgroundColor =[UIColor colorWithRed:223/255.f green:223/255.f blue:223/255.f alpha:1.0];
    TCNavgationController *nav = [[TCNavgationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
    
}


@end
