//
//  UIBarButtonItem+TCExtension.m
//  baiSiBuDeJie
//
//  Created by hello on 16/3/3.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "UIBarButtonItem+TCExtension.h"

@implementation UIBarButtonItem (TCExtension)

+(instancetype)itemWithImage:(NSString *)image selectedImage:(NSString *)selectedImage addTarget:(id)target action:(SEL)action {
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Button setBackgroundImage:[UIImage imageNamed:selectedImage] forState:UIControlStateHighlighted];
    [Button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    Button.size = Button.currentBackgroundImage.size;
    
    return [[self alloc] initWithCustomView:Button];
}

@end
