//
//  UIView+TCExtension.h
//  baiSiBuDeJie
//
//  Created by hello on 16/3/2.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TCExtension)

/*
 在分类中申明@ property 意味着它只会生成方法的申明,不会生成方法的实现和带有下划线的成员变量
 */
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign)CGFloat y;

@property(nonatomic,assign)CGSize size;


@end
