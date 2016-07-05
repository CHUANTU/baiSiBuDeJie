//
//  TCRecommendCategoryCell.m
//  baiSiBuDeJie
//
//  Created by hello on 16/4/28.
//  Copyright © 2016年 tuchuan. All rights reserved.
//

#import "TCRecommendCategoryCell.h"
#import "TCRecommendCategory.h"

@interface TCRecommendCategoryCell ()
@property (strong, nonatomic) IBOutlet UIView *selectedView;

@end

@implementation TCRecommendCategoryCell

- (void)awakeFromNib {
    self.backgroundColor = TCRGBColor(244, 244, 244);
    self.selectedView.backgroundColor = TCRGBColor(219, 21, 26);

}

-(void)setCategory:(TCRecommendCategory *)category {
    _category = category;
    self.textLabel.text = category.name;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    self.textLabel.y = 2;
    self.textLabel.height = self.contentView.height - 2 *self.textLabel.y;
}

-(void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.selectedView.hidden = !selected;
    
    self.textLabel.textColor =selected ? self.selectedView.backgroundColor:TCRGBColor(78, 78, 78);
}
@end
