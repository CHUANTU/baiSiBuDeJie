//
//  TCRecommendCategory.m
//  baiSiBuDeJie
//
//  Created by hello on 16/4/28.
//  Copyright © 2016年 tuchuan. All rights reserved.
// 推荐关注左边的数据模型

#import "TCRecommendCategory.h"

@implementation TCRecommendCategory
-(NSMutableArray *)users {
    if (!_users) {
        _users = [NSMutableArray array];
    }
    return _users;
}
@end
