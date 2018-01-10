//
//  LSRouter+ExampleModule.m
//  BaseProject
//
//  Created by ArthurShuai on 2018/1/8.
//  Copyright © 2018年 ArthurShuai. All rights reserved.
//

#import "LSRouter+ExampleModule.h"

static NSString * const module = @"TestVC";
static NSString * const action = @"showText:";

@implementation LSRouter (ExampleModule)

+ (void)action_Ex_showTestText:(LSRouterHandler)handler
{
    [LSRouter openModule:module action:action params:@"test" perform:handler];
}

@end
