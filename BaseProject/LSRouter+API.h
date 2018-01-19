//
//  LSRouter+API.h
//  BaseProject
//
//  Created by ArthurShuai on 2018/1/19.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//
//  文档名称：网络接口配置
//  功能描述：网络接口配置

#ifndef LSRouter_API_h
#define LSRouter_API_h

static NSString * const BaseUrl = @"https://XXXXX";

#define GetUrl(api) [BaseUrl stringByAppendingString:api]

/******配置接口******/
// e.g. #define kLogin GetUrl(@"common/login")

#endif /* LSRouter_API_h */
