//
//  TCNewViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCNewViewController.h"

@interface TCNewViewController ()

@end

@implementation TCNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIButton *tabButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [tabButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [tabButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    [tabButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    tabButton.size = tabButton.currentBackgroundImage.size;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:tabButton];
}
-(void)tagClick {
    TCLogFunc;
}

@end
