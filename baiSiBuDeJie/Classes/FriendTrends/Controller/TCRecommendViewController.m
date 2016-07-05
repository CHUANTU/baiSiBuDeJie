//
//  TCRecommendViewController.m
//  baiSiBuDeJie
//
//  Created by hello on 16/4/28.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCRecommendViewController.h"

#import <AFNetworking/AFNetworking.h>
#import <SVProgressHUD/SVProgressHUD.h>

#import "TCRecommendCategoryCell.h"

#import <MJExtension.h>
#import <MJRefresh.h>
#import "TCRecommendCategory.h"

#import "TCRecommendUserCell.h"
#import "tcrecommendUser.h"

@interface TCRecommendViewController ()<UITableViewDataSource,UITableViewDelegate>
//左侧的 tableView
@property (strong, nonatomic) IBOutlet UITableView *cateGoryTableView;
//右侧的 tableView
@property (strong, nonatomic) IBOutlet UITableView *userTableView;

/*
 左边的类别数组
 */
@property (nonatomic,strong) NSMutableArray *categories;
//@property (nonatomic,strong) NSMutableArray *users;
@end

@implementation TCRecommendViewController

static NSString * const TCCategoryID  = @"category";
static NSString * const TCUserID  = @"user";

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置 tableView
    [self setupTableView];
    
    //设置上拉刷新
    [self setupRefresh];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"a"] = @"category";
    dict[@"c"] = @"subscribe";
    
    [SVProgressHUD showWithStatus:@"加载中..."];
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [SVProgressHUD dismiss];
        TCLog(@"%@",responseObject);
        
        self.categories = [TCRecommendCategory mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        ;
        
        [self.cateGoryTableView reloadData];
        [self.cateGoryTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] animated:NO scrollPosition:UITableViewScrollPositionTop];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [SVProgressHUD showErrorWithStatus:@"请求失败"];
        //[SVProgressHUD dismiss];
        
    }];
    
}
#pragma mark 初始化 tableView
-(void)setupTableView {
    //注册
    [self.cateGoryTableView registerNib:[UINib nibWithNibName:NSStringFromClass([TCRecommendCategoryCell class]) bundle:nil] forCellReuseIdentifier:TCCategoryID];
    
    [self.userTableView registerNib:[UINib nibWithNibName:NSStringFromClass([TCRecommendUserCell class]) bundle:nil] forCellReuseIdentifier:TCUserID];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.cateGoryTableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    self.userTableView.contentInset = self.cateGoryTableView.contentInset;
    self.userTableView.rowHeight = 70;
    
    self.title = @"推荐关注";
    self.view.backgroundColor =TCGGlobalBg;
}
#pragma mark 添加MJRefreces
-(void)setupRefresh {
    
    
    self.userTableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        TCLog(@"进入上拉刷新");
    }];
    
}

#pragma mark <UItableViewDataSurce>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.cateGoryTableView) {
        return self.categories.count;
    }else {
        TCRecommendCategory *c =self.categories[self.cateGoryTableView.indexPathForSelectedRow.row];
        return c.users.count;
    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView == self.cateGoryTableView) {
        TCRecommendCategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:TCCategoryID];
        cell.category = self.categories[indexPath.row];
        return cell;
    }else {
        TCRecommendUserCell *cell = [tableView dequeueReusableCellWithIdentifier:TCUserID];
        
        TCRecommendCategory *c =self.categories[self.cateGoryTableView.indexPathForSelectedRow.row];
        cell.user = c.users[indexPath.row];
        return cell;
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TCRecommendCategory *c = self.categories[indexPath.row];
    
    if (c.users.count) {
        //加载数据
        [self.userTableView reloadData];
    }else {
        [self.userTableView reloadData];
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
            
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            dict[@"a"] = @"list";
            dict[@"c"] = @"subscribe";
            dict[@"category_id"] = @(c.id);
            
            [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                //responseObject[@"list"];
                //TCLog(@"%@",responseObject);
                NSArray *usersArr = [TCRecommendUser mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
                [c.users addObjectsFromArray:usersArr];
                
                [self.userTableView reloadData];
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                TCLog(@"%@",error);
            }];
        //});
        
    }
    
    
}
@end
