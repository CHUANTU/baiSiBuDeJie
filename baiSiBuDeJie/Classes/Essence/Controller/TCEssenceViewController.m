//
//  TCEssenceViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCEssenceViewController.h"

@interface TCEssenceViewController ()

@end

@implementation TCEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" selectedImage:@"MainTagSubIconClick" addTarget:self action:@selector(tagClick)];
    
}

-(void)tagClick {
    TCLogFunc;
}


@end
