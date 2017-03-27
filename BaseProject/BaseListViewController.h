//
//  BaseListViewController.h
//  BicycleSharing
//
//  Created by ArthurShuai on 2017/3/14.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^cellHandler)(void);

@interface BaseListViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *datas;// 数据数组

/******  可调用的方法  ******/

- (void)LS_registerCellWithClassName:(NSString *)name;
- (void)LS_registerCellWithNibName:(NSString *)name;

- (void)LS_registerHeaderFooterViewWithClassName:(NSString *)name;
- (void)LS_registerHeaderFooterViewWithNibName:(NSString *)name;

/******  可重写的方法  ******/

- (NSInteger)LS_setupSectionsNumber;
- (NSInteger)LS_setupCellNumberForSection:(NSInteger)section;

- (void)LS_configCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
- (void)LS_selectCellAtIndexPath:(NSIndexPath *)indexPath;

- (void)LS_configHearderViewInSection:(NSInteger)section headerView:(UIView *)headerView;
- (void)LS_configFooterViewInSection:(NSInteger)section footerView:(UIView *)footerView;

@end
