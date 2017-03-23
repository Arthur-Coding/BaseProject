//
//  LSRouter+Account.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/22.
//  Copyright © 2017年 qusu. All rights reserved.
//
//  文档名称：账号信息管理
//  功能描述：账号信息管理

#import <LSRouter/LSRouter.h>

@class AFHTTPSessionManager;

@interface LSRouter (Account)

// 此类别中所有属性均加上前缀QS_，同时在.m文件中@dynamic


/******网络请求******/
+ (AFHTTPSessionManager *)httpsManager;

/****保存或获取用户信息****/

/********获取版本信息********/

/********账号在其他地方登录********/
+ (void)repeatedAccountLogin:(NSDictionary *)result;

@end
