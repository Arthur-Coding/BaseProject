//
//  BaseListViewController.m
//  BicycleSharing
//
//  Created by ArthurShuai on 2017/3/14.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import "BaseListViewController.h"

@interface BaseListViewController ()

@end

@implementation BaseListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _datas = [NSMutableArray array];
}

- (void)LS_registerCellWithClassName:(NSString *)name
{
    [self.tableView registerClass:NSClassFromString(name) forCellReuseIdentifier:@"cell"];
}
- (void)LS_registerCellWithNibName:(NSString *)name
{
    [self.tableView registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:@"cell"];
}

- (void)LS_registerHeaderFooterViewWithClassName:(NSString *)name
{
    [self.tableView registerClass:NSClassFromString(name) forHeaderFooterViewReuseIdentifier:@"headerFooter"];
}
- (void)LS_registerHeaderFooterViewWithNibName:(NSString *)name
{
    [self.tableView registerNib:[UINib nibWithNibName:name bundle:nil] forHeaderFooterViewReuseIdentifier:@"headerFooter"];
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self LS_setupSectionsNumber];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self LS_setupCellNumberForSection:section];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (self.datas.count > 0) {
        [self LS_configCell:cell atIndexPath:indexPath];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self LS_selectCellAtIndexPath:indexPath];
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"headerFooter"];
    [self LS_configHearderViewInSection:section headerView:headerView];
    return headerView;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"headerFooter"];
    [self LS_configFooterViewInSection:section footerView:footerView];
    return footerView;
}

- (NSInteger)LS_setupSectionsNumber
{
    return 1;
}
- (NSInteger)LS_setupCellNumberForSection:(NSInteger)section
{
    return self.datas.count;
}
- (void)LS_configCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {}
- (void)LS_selectCellAtIndexPath:(NSIndexPath *)indexPath {}
- (void)LS_configHearderViewInSection:(NSInteger)section headerView:(UIView *)headerView {}
- (void)LS_configFooterViewInSection:(NSInteger)section footerView:(UIView *)footerView {}

@end
