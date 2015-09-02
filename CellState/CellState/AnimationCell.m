//
//  AnimationCell.m
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import "AnimationCell.h"

@interface AnimationCell ()

@property (nonatomic, strong) UILabel      *nameLabel;
@property (nonatomic, strong) UILabel      *unselectedNameLabel;
@property (nonatomic, strong) UIView       *blackView;
@property (nonatomic, strong) UIImageView  *showImageView;

@end

@implementation AnimationCell

- (void)buildSubviews {
    
    self.nameLabel      = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 200, 80)];
    self.nameLabel.font = [UIFont fontWithName:@"Avenir-Light" size:20.f];
    [self addSubview:self.nameLabel];
    
    self.unselectedNameLabel           = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 200, 80)];
    self.unselectedNameLabel.font      = [UIFont fontWithName:@"Avenir-Light" size:20.f];
    self.unselectedNameLabel.textColor = [UIColor redColor];
    [self addSubview:self.unselectedNameLabel];
    
    self.blackView                 = [[UIView alloc] initWithFrame:CGRectMake(20, 60, 50, 1)];
    self.blackView.backgroundColor = [UIColor blackColor];
    [self addSubview:self.blackView];    
}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {
    
    Model *model = data;
    
    // 给数据赋值
    self.nameLabel.text           = model.name;
    self.unselectedNameLabel.text = model.name;
    
    // 切换状态
    if (model.selected == YES) {
        
        [self changeToState:SelectedCellState animated:NO];
        
    } else {
    
        [self changeToState:UnselectedCellState animated:NO];
    }
}

- (void)changeToState:(ECellState)state animated:(BOOL)animated {

    if (state == SelectedCellState) {
        
        [self selectedCellStateWithAnimated:animated];
        
    } else if (state == UnselectedCellState) {
    
        [self unselectedCellStateWithAnimated:animated];
    }
}

- (void)selectedCellStateWithAnimated:(BOOL)animated {

    if (animated == NO) {

        self.nameLabel.frame           = CGRectMake(40, 0, 200, 80);
        self.unselectedNameLabel.frame = CGRectMake(40, 0, 200, 80);
        self.nameLabel.alpha           = 0.f;
        self.unselectedNameLabel.alpha = 1.f;
        
        self.blackView.frame = CGRectMake(20, 60, 50, 1);
        
        self.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.1f];
        
    } else {
    
        [UIView animateWithDuration:0.5f delay:0.f usingSpringWithDamping:1.f initialSpringVelocity:0.f options:UIViewAnimationOptionAllowUserInteraction animations:^{
            
            self.nameLabel.frame           = CGRectMake(40, 0, 200, 80);
            self.unselectedNameLabel.frame = CGRectMake(40, 0, 200, 80);
            self.nameLabel.alpha           = 0.f;
            self.unselectedNameLabel.alpha = 1.f;
            
            self.blackView.frame = CGRectMake(20, 60, 50, 1);
            
            self.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.1f];
            
        } completion:^(BOOL finished) {
            
        }];
    }
}

- (void)unselectedCellStateWithAnimated:(BOOL)animated {

    if (animated == NO) {

        self.nameLabel.frame           = CGRectMake(40 + 40, 0, 200, 80);
        self.unselectedNameLabel.frame = CGRectMake(40 + 40, 0, 200, 80);
        self.nameLabel.alpha           = 1.f;
        self.unselectedNameLabel.alpha = 0.f;
        
        self.blackView.frame = CGRectMake(100, 60, 100, 1);
        
        self.backgroundColor = [UIColor whiteColor];
        
    } else {
        
        [UIView animateWithDuration:0.5f delay:0.f usingSpringWithDamping:1.f initialSpringVelocity:0.f options:UIViewAnimationOptionAllowUserInteraction animations:^{
            
            self.nameLabel.frame           = CGRectMake(40 + 40, 0, 200, 80);
            self.unselectedNameLabel.frame = CGRectMake(40 + 40, 0, 200, 80);
            self.nameLabel.alpha           = 1.f;
            self.unselectedNameLabel.alpha = 0.f;

            self.blackView.frame = CGRectMake(100, 60, 100, 1);
            
            self.backgroundColor = [UIColor whiteColor];
            
        } completion:^(BOOL finished) {
            
        }];
    }
}

@end
