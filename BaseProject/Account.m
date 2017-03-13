//
//  Account.m
//  A5
//
//  Created by ArthurShuai on 2016/12/28.
//  Copyright © 2016年 ArthurShuai. All rights reserved.
//

#import "Account.h"

@interface Account ()

@property (nonatomic,strong)NSString *sid;

@end
@implementation Account

+ (AFHTTPSessionManager *)httpsManager
{
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    if (HTTPSEnable) {
        //设置HTTPS免证书验证
        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
        securityPolicy.allowInvalidCertificates = YES;
        securityPolicy.validatesDomainName = NO;
        session.securityPolicy = securityPolicy;
    }
    return session;
}

+ (instancetype)shared
{
    static Account *account = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        account = [[Account alloc] init];
    });
    return account;
}

+ (NSString *)getSid
{
    return [Account shared].sid;
}
+ (BOOL)isLogin
{
    return YES;
}
+ (BOOL)isLogout
{
    return NO;
}

+ (void)saveVersionNumber:(NSString *)number
{
    [[NSUserDefaults standardUserDefaults] setInteger:number.integerValue forKey:@"versionNumber"];
}
+ (NSInteger)getVersionNumber
{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"versionNumber"] == 0) {
        [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"versionNumber"];
    }
    return [[NSUserDefaults standardUserDefaults] integerForKey:@"versionNumber"];
}

+ (void)getVersionWithNetWorkingError:(void (^)(void))err2
{
//    [[Account httpsManager] POST:kVerison parameters:@{@"type":@"2"} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        if ([responseObject[@"status"] integerValue] == 1) {
//            if ([responseObject[@"data"][@"no"] integerValue] > [Account getVersionNumber]) {
//                if ([responseObject[@"data"][@"isforce"] isEqualToString:@"1"]) {
//                    NSString *appUrl = [NSString stringWithFormat:@"itms-apps://itunes.apple.com/cn/app/id%@",APPID];
//                    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appUrl]];
//                }else{
//
//                }
//            }
//            [[NSUserDefaults standardUserDefaults] setInteger:[responseObject[@"data"][@"no"] integerValue] forKey:@"versionNumber"];
//        }
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        if (err2) {
//            err2();
//        }
//    }];
}

+ (void)repeatedAccountLogin:(NSDictionary *)result
{
//    // e.g.
//    if ([result[@"code"] isEqualToString:@"110015"] || [result[@"code"] isEqualToString:@"110004"]) {
//        UIStoryboard *st = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        kAppDelegate.window.rootViewController = [st instantiateViewControllerWithIdentifier:@"MainVC"];
//        [kAppDelegate.window makeKeyAndVisible];
//        [kAppDelegate.timer1 invalidate];
//        [kAppDelegate.timer2 invalidate];
//        kAppDelegate.messageDatas = nil;
//        kAppDelegate.unReadNumber = 0;
//        [kAppDelegate.window.rootViewController showHint:[result[@"code"] isEqualToString:@"110015"]?@"您的账号在其他地方登录":@"该账号已注销，请联系管理员"];
//    }
}

@end
