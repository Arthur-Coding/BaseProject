//
//  API.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/13.
//  Copyright © 2017年 qusu. All rights reserved.
//

#ifndef API_h
#define API_h

#define BaseUrl @"http://XXXXX"
#define HTTPSEnable [BaseUrl hasPrefix:@"https"] //是否使用 HTTPS接口，BaseUrl中为https-YES,BaseUrl中为http——NO
#define GetUrl(api) [BaseUrl stringByAppendingString:api]

/******配置API******/

// e.g. #define kLogin GetUrl(@"common/login")


#endif /* API_h */
