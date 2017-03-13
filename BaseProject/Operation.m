//
//  Operation.m
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/13.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import "Operation.h"

@implementation Operation

void alert(UIViewController *obj,NSString *mes,alertAction confirmAction)
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:mes preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:confirmAction];
    [alert addAction:alertAction];
    [obj presentViewController:alert animated:YES completion:nil];
}

void alert2(UIViewController *obj,NSString *mes,alertAction confirmAction, alertAction cancelAction)
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:mes preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:confirmAction];
    UIAlertAction *alertAction2 = [UIAlertAction actionWithTitle:@"" style:UIAlertActionStyleCancel handler:cancelAction];
    [alert addAction:alertAction1];
    [alert addAction:alertAction2];
    [obj presentViewController:alert animated:YES completion:nil];
}

void changeStatusBarColor(UIColor *color)
{
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = color;
    }
}

@end
