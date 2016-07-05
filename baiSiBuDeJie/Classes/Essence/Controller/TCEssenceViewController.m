//
//  TCEssenceViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCEssenceViewController.h"

#import "AFNetworking.h"

@interface TCEssenceViewController ()

@end

@implementation TCEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" selectedImage:@"MainTagSubIconClick" addTarget:self action:@selector(tagClick)];
    
    self.view.backgroundColor =TCGGlobalBg;
    
    
    
    
    
    

    
    TCLogFunc;
}

-(void)tagClick {
    TCLogFunc;
    
    UIViewController *v = [[UIViewController alloc] init];
    v.view.backgroundColor = [UIColor whiteColor];
    //v.view.backgroundColor = [UIColor colorWithRed:100/255.f green:100/255.f blue:100/255.f alpha:1];
    [self.navigationController pushViewController:v animated:YES];
}


@end
