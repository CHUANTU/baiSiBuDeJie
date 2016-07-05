//
//  TCRecommendUserCell.m
//  baiSiBuDeJie
//
//  Created by hello on 16/4/29.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCRecommendUserCell.h"
#import "TCRecommendUser.h"

#import <UIImageView+WebCache.h>
@interface TCRecommendUserCell ()
@property (strong, nonatomic) IBOutlet UIImageView *headerImageView;
@property (strong, nonatomic) IBOutlet UILabel *screenNameLable;
@property (strong, nonatomic) IBOutlet UILabel *fansCountLabel;

@end

@implementation TCRecommendUserCell

- (void)awakeFromNib {
    
}

-(void)setUser:(TCRecommendUser *)user {
    _user = user;
    
    self.screenNameLable.text = user.screen_name;
    self.fansCountLabel.text = [NSString stringWithFormat:@"%zd人关注",user.fans_count];
    
    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:user.header] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
}

@end
