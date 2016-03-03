//
//  TCMeViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCMeViewController.h"

@interface TCMeViewController ()

@end

@implementation TCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的";
    
    self.navigationItem.rightBarButtonItems = @[
                                                [UIBarButtonItem itemWithImage:@"mine-setting-icon" selectedImage:@"mine-setting-icon-click" addTarget:self action:@selector(settingButtonClick)],
                                                [UIBarButtonItem itemWithImage:@"mine-moon-icon" selectedImage:@"mine-moon-icon-click" addTarget:self action:@selector(moonButtonClick)]
                                                ];
    
}

-(void)settingButtonClick {
    TCLogFunc;
}
-(void)moonButtonClick {
   TCLogFunc;
}

@end
