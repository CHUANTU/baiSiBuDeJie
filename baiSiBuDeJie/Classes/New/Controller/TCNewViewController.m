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
    
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" selectedImage:@"MainTagSubIconClick" addTarget:self action:@selector(tagClick)];
    
    self.view.backgroundColor =TCGGlobalBg;
    
    
    TCLogFunc;
}
/**
 *  点击事件
 */
-(void)tagClick {
    TCLogFunc;
}

@end
