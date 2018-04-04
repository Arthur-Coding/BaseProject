//
//  LSRouter+AppDelegate.m
//  Yizsuda
//
//  Created by ArthurShuai on 2017/9/25.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//

#import "LSRouter+AppDelegate.h"

// 所有类型文件中的属性均加上前缀LS_，同时在.m文件中@dynamic，不必使用runtime赋值
DynamicPropertySetPrefix("LS_")

@implementation LSRouter (AppDelegate)

+ (void)app:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 全局配置
    [UITableView appearance].tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
    [UITableView appearance].tableFooterView = [[UIView alloc] init];

}

#pragma mark - 通知相关配置
#pragma mark 用户通知(推送) _自定义方法
+ (void)registerUserNotification {
    UIUserNotificationType types = (UIUserNotificationTypeAlert |
                                    UIUserNotificationTypeSound |
                                    UIUserNotificationTypeBadge);

    UIUserNotificationSettings *settings;
    settings = [UIUserNotificationSettings settingsForTypes:types categories:nil];
    [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
}
+ (void)app:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSString *token = [[deviceToken description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    token = [token stringByReplacingOccurrencesOfString:@" " withString:@""];
}
+ (void)app:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"[Register Error]:%@", [error localizedDescription]);
}
+ (void)app:(UIApplication *)app performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    completionHandler(UIBackgroundFetchResultNewData);
}

+ (void)app:(UIApplication *)app didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler
{
    //清除角标
    app.applicationIconBadgeNumber = 0;
}

#pragma mark - others
+ (void)appWillResignActive:(UIApplication *)application
{

}
+ (void)appDidEnterBackground:(UIApplication *)application
{

}
+ (void)appWillEnterForeground:(UIApplication *)application
{
    //清除角标
    application.applicationIconBadgeNumber = 0;
}
+ (void)appDidBecomeActive:(UIApplication *)application
{

}
+ (void)appWillTerminate:(UIApplication *)application
{
    
}

@end
