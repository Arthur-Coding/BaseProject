//
//  Account.h
//  A5
//
//  Created by ArthurShuai on 2016/12/28.
//  Copyright © 2016年 ArthurShuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;
@interface Account : NSObject

/******网络请求******/
+ (AFHTTPSessionManager *)httpsManager;

/****保存或获取用户信息****/
+ (NSString *)getSid;
+ (BOOL)isLogin;
+ (BOOL)isLogout;

/********登录、获取验证码、充值密码、修改密码、修改用户资料等********/


/********获取版本信息********/

/********账号在其他地方登录********/
+ (void)repeatedAccountLogin:(NSDictionary *)result;

@end
