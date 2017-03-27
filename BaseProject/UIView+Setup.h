//
//  UIView+Setup.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/24.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Setup)

/**
 * 设置圆角

 @param value 圆角值
 */
- (void)setupCornerRadius:(CGFloat)value;

/**
 * 设置边框

 @param color 边框颜色
 @param width 边框宽度
 */
- (void)setupBorderWithColor:(UIColor *)color width:(CGFloat)width;

/**
 * 设置简单阴影
 * 注：shadowOffset默认正方向是右下

 @param color 阴影颜色
 @param alpha 阴影填充透明度0-1
 @param offset 阴影位置与宽度
 @param radius 阴影圆角
 */
- (void)setupShadowWithColor:(UIColor *)color alpha:(CGFloat)alpha shadowOffset:(CGSize)offset shadowRadius:(CGFloat)radius;

/**
 * 添加约束

 @param attr1 要添加的约束
 @param relation 关系，等于、大于等于、小于等于
 @param view view
 @param attr2 view的约束
 @param multiplier 倍数
 @param constant 差值
 */
- (void)addConstraintWithAttribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

@end
