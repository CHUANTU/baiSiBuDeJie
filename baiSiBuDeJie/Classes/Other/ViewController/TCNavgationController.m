//
//  TCNavgationController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/4/19.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCNavgationController.h"

@implementation TCNavgationController

//第一次使用者这个类的时候
+(void)initialize {
    UINavigationBar *nav = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    [nav setBackgroundImage:[UIImage imageNamed:@"friendsTrend_login_click"] forBarMetrics:UIBarMetricsDefault];
    
    
    //navigationbarBackgroundWhite
}

-(void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  可以实现返回键的颜色
     */
    //self.navigationBar.tintColor = [UIColor whiteColor];
    
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    
    
    /**
     可以实现返回键的颜色
     */
//    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
    
    if (self.childViewControllers.count > 0) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        //btn.backgroundColor = [UIColor redColor];
        [btn setTitle:@"返回" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        btn.size = CGSizeMake(100, 30);
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        btn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        //[btn sizeToFit];
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    /**
     *  写在前面到时候如果不同可以覆盖
     */
    [super pushViewController:viewController animated:animated];
    
}
-(void)back {
    [self popToRootViewControllerAnimated:YES];
}
@end
