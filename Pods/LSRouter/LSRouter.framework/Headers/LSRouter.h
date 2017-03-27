//
//  LSRouter.h
//  LSRouterDemo
//
//  Created by ArthurShuai on 2017/3/6.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//
//  两点重要说明：
//  1.组件：即一个经过严格单元测试的可复用页面、视图等，组件对外的action所在其实就是viewController或view
//  2.本架构中，对组件定义就是以上说明。类似于AFNetworking之类的，本架构中称之为“工具插件”，在命名上与“组件”有所区别

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

typedef void(^LSRouterHandler)(id module);
typedef void(^LSInformationHandler)(id information);

@interface LSRouter : NSObject

+ (instancetype)sharedInstance;

/**
 远程App调用入口
 * url格式：scheme://[target]/[actionName]?[params]

 @param url url * 格式：scheme://[target]/[actionName]?[params]
 * 例如：aaa://targetA/actionB?id=1234
 * 当前要求组件所有对外的actionName必须包含前缀"action_"
 @param completion 完成回调
 */
+ (void)performActionWithUrl:(NSURL *)url completion:(LSRouterHandler)completion;

/***********************************/

/**
 本地组件调用入口
 * perform:找到组件后下一步调用处理，如push、present组件等

 @param objectClass 组件类名
 @param actionName actionName
 @param params 参数
 @param handler 找到组件后下一步调用处理，如push、present组件等
 */
+ (void)openModule:(NSString *)objectClass action:(NSString *)actionName params:(id)params perform:(LSRouterHandler)handler;

/**
 缓存组件
 * 实际使用时，开发人员不必调用，架构设计中已将所有组件动态缓存

 @param object 组件
 @return YES or NO
 */
+ (BOOL)cacheModule:(id)object;

/***********************************/

/**
 组件发送通讯信息接口
 * 组件只管发送，通讯标记不能为空
 * information为基本数值类型时，要转为NSNumber

 @param information 通讯信息
 @parem name 通讯标记，用于接收组件方识别接收信息
 */
+ (void)sendInformation:(id)information tagName:(NSString *)name;

/**
 组件接收通讯信息接口
 * 组件只管通过通讯标记接收信息

 @param name 通讯标记
 @parem resultHandler 接收到通讯信息回调，会返回通讯信息
 */
+ (void)receiveInformationWithTagName:(NSString *)name result:(LSInformationHandler)resultHandler;

@end
