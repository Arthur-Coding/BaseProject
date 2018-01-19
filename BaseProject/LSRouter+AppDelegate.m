//
//  LSRouter+AppDelegate.m
//  Yizsuda
//
//  Created by ArthurShuai on 2017/9/25.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//

//#import <UMSocialCore/UMSocialCore.h>

#import "LSRouter+AppDelegate.h"
//#import "IQKeyboardManager.h"
//#import "IQKeyboardReturnKeyHandler.h"

//@interface AppDelegate ()<WXApiDelegate>
//
//@end

@implementation LSRouter (AppDelegate)

+ (void)app:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 全局配置
    [UITableView appearance].tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
    [UITableView appearance].tableFooterView = [[UIView alloc] init];

    // IQKeyboardManager键盘工具配置
//    [IQKeyboardManager sharedManager].shouldShowToolbarPlaceholder = YES;
//    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
//    [IQKeyboardManager sharedManager].toolbarTintColor = [UIColor blackColor];
//    [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = @"完成";

    // 开启全局网络监控
//    [LSRouter openNetworkMonitoring];

    // 远程推送配置
//    [LSRouter registerUserNotification];

    // 友盟分享
//    [LSRouter configUSharePlatforms];

    // 支付配置
//    [WXApi registerApp:WechatAPPKey];
}

#pragma mark - 友盟分享和支付相关
+ (void)configUSharePlatforms
{
//    if (UMengAppKey.length > 0) {
//        /* 设置友盟appkey */
//        [[UMSocialManager defaultManager] setUmSocialAppkey:UMengAppKey];
//        [[UMSocialManager defaultManager] openLog:YES];
//        [UMSocialGlobal shareInstance].isUsingHttpsWhenShareContent = NO;
//        /* 设置微信的appKey和appSecret */
//        [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:WechatAPPKey appSecret:WechatAppSecret redirectURL:nil];
//        /* QQ的appId */
//        [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:QQAPPId appSecret:nil redirectURL:nil];
//    }
}
//+ (BOOL)app:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
//    BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
//    if (!result) {
//        if ([url.host isEqualToString:@"safepay"]) {
//            // 支付跳转支付宝钱包进行支付，处理支付结果
//            [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
//                [LSRouter sendInformation:resultDic tagName:@"alipay"];
//            }];
//            return YES;
//        }
//        return [WXApi handleOpenURL:url delegate:(id)kAppDelegate];//微信
//    }
//    return result;
//}
// NOTE: 9.0以后使用新API接口
//+ (BOOL)app:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options {
//    BOOL result = [[UMSocialManager defaultManager]  handleOpenURL:url options:options];
//    if (!result) {
//        if ([url.host isEqualToString:@"safepay"]) {
//            // 支付跳转支付宝钱包进行支付，处理支付结果
//            [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
//                [LSRouter sendInformation:resultDic tagName:@"alipay"];
//            }];
//            return YES;
//        }
//        return [WXApi handleOpenURL:url delegate:(id)kAppDelegate];//微信
//    }
//    return result;
//}
//+ (BOOL)app:(UIApplication *)application handleOpenURL:(NSURL *)url
//{
//    BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url];
//    if (!result) {
//        // 其他如支付等SDK的回调
//        if ([url.host isEqualToString:@"safepay"]) {
//            // 支付跳转支付宝钱包进行支付，处理支付结果
//            [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
//                [LSRouter sendInformation:resultDic tagName:@"alipay"];
//            }];
//            return YES;
//        }
//        return [WXApi handleOpenURL:url delegate:(id)kAppDelegate];//微信
//    }
//    return result;
//}

#pragma mark WXApiDelegate
//- (void)onResp:(BaseResp *)resp {
//    if([resp isKindOfClass:[PayResp class]]){
//        //支付返回结果，实际支付结果需要去微信服务器端查询
//        NSString *wechatResult = nil;
//        NSDictionary *parames = @{@"0":@"支付成功",
//                                  @"-1":@"支付失败",
//                                  @"-2":@"已取消支付",
//                                  @"-3":@"支付信息发送失败",
//                                  @"-4":@"支付授权失败",
//                                  @"-5":@"微信不支持"
//                                  };
//        [LSRouter sendInformation:parames[@(resp.errCode).stringValue] tagName:@"wechatPay"];
//    }
//}

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
    
    //向个推服务器注册deviceToken
//    [GeTuiSdk registerDeviceToken:token];
}
+ (void)app:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"[Register Error]:%@", [error localizedDescription]);
}
+ (void)app:(UIApplication *)app performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    //Background Fetch 恢复SDK 运行
//    [GeTuiSdk resume];
    completionHandler(UIBackgroundFetchResultNewData);
}

+ (void)app:(UIApplication *)app didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler
{
    //清除角标
    app.applicationIconBadgeNumber = 0;
}
///** SDK遇到错误回调 */
//- (void)GeTuiSdkDidOccurError:(NSError *)error {
//    NSLog(@"[GexinSdk error]:%@", [error localizedDescription]);
//}
///** SDK收到透传消息回调 */
//- (void)GeTuiSdkDidReceivePayloadData:(NSData *)payloadData andTaskId:(NSString *)taskId andMsgId:(NSString *)msgId andOffLine:(BOOL)offLine fromGtAppId:(NSString *)appId{
//    // 透传解析
//    NSString *result = [[NSString alloc] initWithData:payloadData encoding:NSUTF8StringEncoding];
//    NSLog(@"个推推送透传：%@",result);
//    // 汇报个推自定义事件
//    [GeTuiSdk sendFeedbackMessage:90001 andTaskId:taskId andMsgId:msgId];
//}

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
