//
//  BaseTableViewCell.h
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

/**
 *  ========================
 *  = override by subclass =
 *  ========================
 *
 *  cell默认的设置
 */
- (void)defaultSetup;

/**
 *  ========================
 *  = override by subclass =
 *  ========================
 *
 *  构建view
 */
- (void)buildSubviews;

/**
 *  ========================
 *  = override by subclass =
 *  ========================
 *
 *  加载数据
 */
- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath;

@end
