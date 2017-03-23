//
//  Operation.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/13.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ alertAction)(UIAlertAction *action);

@interface Operation : NSObject

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
 更改手机状态栏背景颜色

 @param color color
 */
void changeStatusBarColor(UIColor *color);


@end
