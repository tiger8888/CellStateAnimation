//
//  BaseTableViewCell.m
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self defaultSetup];
        
        [self buildSubviews];
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
}

#pragma mark - 由子类重写

- (void)defaultSetup {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubviews {

}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {

}

@end
