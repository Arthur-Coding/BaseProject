//
//  LSRouter+Foundation.h
//  BaseProject
//
//  Created by ArthurShuai on 2018/1/5.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//
//  文档名称：基础配置
//  功能描述：基础配置

#ifndef LSRouter_Foundation_h
#define LSRouter_Foundation_h

#import "AppDelegate.h"

/**
 应用Apple ID
 */
static NSString * const AppleID = @"";

/**
 是否使用模拟数据
 */
static BOOL USE_SIMULATE = NO;
/**
 获取plist文件模拟数据
 */
#define GET_SIMULATE_ARRAY(plistName) [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"]]
#define GET_SIMULATE_DICTIONARY(plistName) [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"]]

/**
 屏幕宽度
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

/**
 屏幕高度
 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

/**
 应用代理对象
 */
#define kAppDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

/**
 弱引用对象
 */
#define WeakSelf __weak typeof(self) weakSelf = self;

/**
 强引用对象
 */
#define StrongSelf __strong typeof(self) strongSelf = self;

/**
 加载本地图片
 */
#define kLoadImage(imageName,type) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imageName ofType:type == nil ? @"png" : type]]

/**
 颜色生成器

 @param rgbValue 16进制rgbValue e.g. 0xffffff
 @param alpha 透明度 0~1
 */
#define ColorWithValue(rgbValue,alpha) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alpha]

/**
 颜色生成器2
 */
#define ColorWithRGB(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

/**
 当前应用版本
 */
#define APP_VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

/**
 当前手机系统版本
 */
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

/**
 当前手机系统语言
 */
#define SYSTEM_LANGUAGE [NSLocale preferredLanguages].firstObject

#endif /* LSRouter_Foundation_h */
