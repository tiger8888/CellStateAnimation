//
//  CellStateAnimationProtocol.h
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 cell状态
 */
typedef enum : NSUInteger {

    SelectedCellState = 0x20, // 选中状态
    UnselectedCellState,      // 未选中状态
    
} ECellState;

@protocol CellStateAnimationProtocol <NSObject>

@required
/**
 *  切换到指定的状态
 *
 *  @param state    指定的状态
 *  @param animated 是否需要执行切换的动画
 */
- (void)changeToState:(ECellState)state animated:(BOOL)animated;

@end
