//
//  LSRouter+Networking.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/2/22.
//  Copyright © 2017年 qusu. All rights reserved.
//
//  文档名称：网络请求配置
//  功能描述：网络请求配置

#import <LSRouter/LSRouter.h>

@class AFHTTPSessionManager;

@interface LSRouter (Networking)

/******网络请求******/
+ (AFHTTPSessionManager *)httpsManager;
+ (void)openNetworkMonitoring; // 开启网络监控

@end
