//
//  LSRouter+AppDelegate.h
//  Yizsuda
//
//  Created by ArthurShuai on 2017/9/25.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//
//  文档名称：AppDelegate配置
//  功能描述：AppDelegate配置

#import <LSRouter/LSRouter.h>

@interface LSRouter (AppDelegate)

+ (void)app:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

#pragma mark - 通知相关配置
/** 远程通知注册成功委托 */
+ (void)app:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
/** 远程通知注册失败委托 */
+ (void)app:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
/** background fetch  唤醒 */
+ (void)app:(UIApplication *)app performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler;
/** APP已经接收到“远程”通知(推送) - 透传推送消息  */
+ (void)app:(UIApplication *)app didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler;

#pragma mark - others
+ (void)appWillResignActive:(UIApplication *)application;
+ (void)appDidEnterBackground:(UIApplication *)application;
+ (void)appWillEnterForeground:(UIApplication *)application;
+ (void)appDidBecomeActive:(UIApplication *)application;
+ (void)appWillTerminate:(UIApplication *)application;

@end
