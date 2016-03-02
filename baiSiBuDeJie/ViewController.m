//
//  ViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/1.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor greenColor];
    btn.frame = CGRectMake(10, 20, 30, 40);
    [self.view addSubview:btn];
}



@end
