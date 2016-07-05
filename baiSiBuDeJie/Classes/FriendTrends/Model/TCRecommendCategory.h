//
//  TCRecommendCategory.h
//  baiSiBuDeJie
//
//  Created by hello on 16/4/28.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCRecommendCategory : NSObject

/*
 id
 */
@property (nonatomic, assign) NSInteger id;

/*
 数量
 */
@property (nonatomic, assign) NSInteger count;
/*
 名字
 */
@property (nonatomic, copy) NSString *name;

/*
 这个类别对应的数据
 */
@property (nonatomic,strong) NSMutableArray *users;




@end
