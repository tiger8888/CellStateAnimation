//
//  Model.h
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic)         BOOL      selected;

+ (Model *)modelWithName:(NSString *)name selected:(BOOL)selected;

@end
