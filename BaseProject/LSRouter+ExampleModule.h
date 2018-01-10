//
//  LSRouter+ExampleModule.h
//  BaseProject
//
//  Created by ArthurShuai on 2018/1/8.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//
//  文档名称：模块接口事例
//  功能描述：模块接口事例

#import <LSRouter/LSRouter.h>

@interface LSRouter (ExampleModule)

/**
 展示测试文本

 @param handler handler description
 */
+ (void)action_Ex_showTestText:(LSRouterHandler)handler;

@end
