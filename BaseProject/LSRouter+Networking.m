//
//  LSRouter+Networking.m
//  Yizsuda
//
//  Created by ArthurShuai on 2017/9/21.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import "LSRouter+Networking.h"

@implementation LSRouter (Networking)

+ (AFHTTPSessionManager *)httpsManager
{   
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    if ([BaseUrl hasPrefix:@"https"]) {
        //设置HTTPS免证书验证
        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
        securityPolicy.allowInvalidCertificates = YES;
        securityPolicy.validatesDomainName = NO;
        session.securityPolicy = securityPolicy;
    }
    return session;
}
+ (void)openNetworkMonitoring
{
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusNotReachable: {

            }
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN: {

            }
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi: {
                
            }
                break;

            default:
                break;
        }
    }];
    //开始监听
    [manager startMonitoring];
}

@end
