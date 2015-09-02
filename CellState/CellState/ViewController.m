//
//  ViewController.m
//  CellState
//
//  Created by YouXianMing on 15/9/2.
//  Copyright (c) 2015年 ZiPeiYi. All rights reserved.
//

#import "ViewController.h"
#import "AnimationCell.h"
#import "Model.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)  UITableView    *tableView;
@property (nonatomic, strong)  NSMutableArray *datasArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self createDataSource];
    
    self.tableView = [self createTableViewWithFrame:self.view.bounds delegate:self];
    [self.view addSubview:self.tableView];
}

#pragma mark - 数据源
- (void)createDataSource {
    
    self.datasArray = [NSMutableArray array];
    [self.datasArray addObject:[Model modelWithName:@"YouXianMing" selected:YES]];
    [self.datasArray addObject:[Model modelWithName:@"NoZuoNoDie" selected:NO]];
    [self.datasArray addObject:[Model modelWithName:@"State" selected:YES]];
    [self.datasArray addObject:[Model modelWithName:@"StarTrek" selected:NO]];
    [self.datasArray addObject:[Model modelWithName:@"iPhone5s" selected:NO]];
    [self.datasArray addObject:[Model modelWithName:@"Android" selected:NO]];
}

#pragma mark - UITableView相关
- (UITableView *)createTableViewWithFrame:(CGRect)frame delegate:(id)delegate {
    
    UITableView *tableView   = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    tableView.delegate       = delegate;
    tableView.dataSource     = delegate;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [tableView registerClass:[AnimationCell class] forCellReuseIdentifier:AnimationCellFlag];
    
    return tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_datasArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AnimationCellFlag];
    
    Model *model = _datasArray[indexPath.row];
    [cell loadData:model indexPath:indexPath];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Model         *model = _datasArray[indexPath.row];
    AnimationCell *cell  = (AnimationCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    if (model.selected == YES) {
        
        [cell changeToState:UnselectedCellState animated:YES];
        model.selected = NO;
        
    } else {
        
        [cell changeToState:SelectedCellState animated:YES];
        model.selected = YES;
    }
}

@end
