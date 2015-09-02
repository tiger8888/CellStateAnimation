//
//  AnimationCell.h
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "Model.h"
#import "CellStateAnimationProtocol.h"

#define  AnimationCellFlag  @"AnimationCellFlag"

@interface AnimationCell : BaseTableViewCell <CellStateAnimationProtocol>

@end
