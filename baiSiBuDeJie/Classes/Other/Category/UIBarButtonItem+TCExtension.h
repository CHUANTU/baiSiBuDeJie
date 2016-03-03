//
//  UIBarButtonItem+TCExtension.h
//  baiSiBuDeJie
//
//  Created by hello on 16/3/3.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TCExtension)

+(instancetype)itemWithImage:(NSString *)image selectedImage:(NSString *)selectedImage addTarget:(id)target action:(SEL)action;

@end
