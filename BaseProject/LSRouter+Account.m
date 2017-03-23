//
//  LSRouter+Account.m
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/22.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import "LSRouter+Account.h"
#import <CategoryPropertyDynamicSupport/NLDynamicPropertyPrefix.h>
#import <CategoryPropertyDynamicSupport/NSObject+nl_dynamicPropertySupport.h>

DynamicPropertySetPrefix("QS_")

@implementation LSRouter (Account)

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
    
}

@end
