//
//  Model.m
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (Model *)modelWithName:(NSString *)name selected:(BOOL)selected {

    Model *model   = [[Model alloc] init];
    model.name     = name;
    model.selected = selected;
    
    return model;
}

@end
