//
//  Public.h
//
//  Created by ArthurShuai on 16/10/26.
//  Copyright © 2016年 ArthurShuai. All rights reserved.
//
//  文档名称：基础开发公共头文件

#ifndef Public_h
#define Public_h

/***其他自定义配置于以下范围内配置***/

#define APPID @""//应用APPID

/***其他自定义配置于以上范围内配置***/

#define WeakObj(obj) __weak typeof(obj) weak##obj = obj;//弱引用对象
#define WeakSelf __weak typeof(self) weakSelf = self;
#define StrongObj(obj) __strong typeof(obj) weak##obj = obj;//强引用对象
#define StrongSelf __strong typeof(self) strongSelf = self;

#import "AppDelegate.h"
#define kAppDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)//应用代理对象

/**********************************
 *  加载图片
 *  type是png时,可以传入nil
 *  建议使用此方法，性能更高于[UIImage imageNamed:XXX]
 **********************************/
#define kLoadImage(imageName,type) ([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imageName ofType:type == nil ? @"png" : type]])

/**********************************
 *  颜色处理
 **********************************/
//rgb颜色转换（16进制->10进制）
#define kColorFromRGBValue(rgbValue) ([UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0f])
#define kColorFromRGBValueAndAlpha(rgbValue,alpha) ([UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alpha])
//带有RGBA的颜色
#define kColor(R, G, B, A) ([UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A])
#define kColorRGB(R,G,B) ([UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0f])

/**********************************
 *  自定义字体，不使用系统字体
 **********************************/
#define kFont(fontName,size) ([UIFont fontWithName:fontName size:size])

#define kScreenW ([UIScreen mainScreen].bounds.size.width)//屏幕宽度
#define kScreenH ([UIScreen mainScreen].bounds.size.height)//屏幕高度
#define kScreen_RESOLUTION (kScreenW * kScreenH * [UIScreen mainScreen].scale)//屏幕分辨率

#define OLDVERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]//当前应用版本

#define kCurrentLanguage ([NSLocale preferredLanguages].firstObject)//当前系统语言
//#define kCurrentLanguage ([[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"]).firstObject

#define kDevice (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? @"iPad" : @"iPhone")//判断当前设备是iPod或iPhone
#define SYSTEM_VERSION ([[[UIDevice currentDevice] systemVersion] floatValue])//当前系统版本
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

//判断是真机还是模拟器
#if TARGET_OS_IPHONE
//iPhone Device do something
#endif
#if TARGET_IPHONE_SIMULATOR
//iPhone Simulator do something
#endif

#endif /* Public_h */
