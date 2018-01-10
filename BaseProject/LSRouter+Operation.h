//
//  LSRouter+Operation.h
//  BaseProject
//
//  Created by ArthurShuai on 2018/1/5.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//
//  文档名称：快捷操作配置
//  功能描述：快捷操作配置

#import <LSRouter/LSRouter.h>
#import <CategoryPropertyDynamicSupport/NLDynamicPropertyPrefix.h>
#import <CategoryPropertyDynamicSupport/NSObject+nl_dynamicPropertySupport.h>

// 所有类型文件中的属性均加上前缀LS_，同时在.m文件中@dynamic，不必使用runtime赋值
DynamicPropertySetPrefix("LS_")

typedef void (^ alertAction)(UIAlertAction *action);

@interface LSRouter (Operation)

/**
 基础弹出提示框1
 * 只有一个确定按钮

 @param obj 弹出提示框的视图控制器
 @param mes 提示信息
 @param confirmAction 确定action
 */
void alert(UIViewController *obj,NSString *mes,alertAction confirmAction);

/**
 基础弹出提示框2
 * 包含确定、取消按钮

 @param obj 弹出提示框的视图控制器
 @param mes 提示信息
 @param confirmAction 确定action
 @param cancelAction 取消action
 */
void alert2(UIViewController *obj,NSString *mes,alertAction confirmAction, alertAction cancelAction);

/**
 基础弹出提示框3
 * 定制提示标题、信息
 * 包含确定、取消按钮

 @param obj 弹出提示框的视图控制器
 @param title 提示标题
 @param mes 提示信息
 @param confirmAction 确定action
 @param cancelAction 取消action
 */
void alert3(UIViewController *obj, NSString *title,NSString *mes, alertAction confirmAction, alertAction cancelAction);

/**
 更改手机状态栏背景颜色

 @param color color
 */
void changeStatusBarColor(UIColor *color);

/**
 网络连接错误
 */
void showNetworkError(void);

@end
