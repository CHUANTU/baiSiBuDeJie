//
//  TCRecommendUser.h
//  baiSiBuDeJie
//
//  Created by hello on 16/4/29.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCRecommendUser : NSObject
/**
 introduction : ,
 uid : 18058339,
 header : http://wimg.spriteapp.cn/profile/20160415114056.jpg,
 gender : 2,
 is_vip : 0,
 fans_count : 1406,
 tiezi_count : 6,
 is_follow : 0,
 screen_name : 浪迹情感教育
 */
/*
 头像
 */
@property (nonatomic, copy) NSString * header;
/*
 昵称
 */
@property (nonatomic, copy) NSString * screen_name;
/*
 fans_count
 */
@property (nonatomic, assign) NSInteger *fans_count;


@end
