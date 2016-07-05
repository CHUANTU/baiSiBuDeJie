//
//  TCFriendTrendsViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCFriendTrendsViewController.h"

#import <objc/message.h>

#import "TCRecommendViewController.h"


@interface TCFriendTrendsViewController ()

@end

@implementation TCFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.title = @"我的关注";相当于我写了下面两句代码
    //self.navigationItem.title = @"";
    //self.tabBarItem.title = @"";
    
    
    self.navigationItem.title = @"我的关注";
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" selectedImage:@"friendsRecommentIcon-click" addTarget:self action:@selector(friendsRecommentClick)];
    
    self.view.backgroundColor =TCGGlobalBg;
    
    TCLogFunc;
    
    
    
    
    
}
-(void)btn {
    TCLogFunc;
}


-(void)friendsRecommentClick {
    TCLogFunc;
    TCRecommendViewController *vc = [[TCRecommendViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}



@end
