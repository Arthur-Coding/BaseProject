//
//  API.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/13.
//  Copyright © 2017年 qusu. All rights reserved.
//

#ifndef API_h
#define API_h

#define HTTPSEnable NO //是否使用 HTTPS接口，YES：BaseUrl中改为https,NO:BaseUrl中改为http
#define BaseUrl @"http://XXXXX"
#define GetUrl(api) [BaseUrl stringByAppendingString:api]

/******配置API******/

// e.g. #define kLogin GetUrl(@"common/login")


#endif /* API_h */
