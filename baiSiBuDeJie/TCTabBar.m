//
//  TCTabBar.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCTabBar.h"

@interface TCTabBar ()

@property (nonatomic,weak)UIButton *publishBtn;

@end

@implementation TCTabBar

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIButton *publishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        [self addSubview:publishBtn];
        self.publishBtn = publishBtn;
        
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    

    CGFloat width = self.width;
    CGFloat height = self.height;
    
    self.publishBtn.width = self.publishBtn.currentBackgroundImage.size.width;
    self.publishBtn.height = self.publishBtn.currentBackgroundImage.size.height;
    
    self.publishBtn.center = CGPointMake(width * 0.5, height * 0.5);
    
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
//        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        if (![button isKindOfClass:[UIControl class]] || button == self.publishBtn) continue;
        //这个意思是如果 index > 1 那么就让 index+1 否则就直接用 index
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index ++;
    }
}

@end
