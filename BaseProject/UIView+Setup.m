//
//  UIView+Setup.m
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/24.
//  Copyright © 2017年 qusu. All rights reserved.
//

#import "UIView+Setup.h"

@implementation UIView (Setup)

- (void)setupCornerRadius:(CGFloat)value
{
    self.layer.cornerRadius = value;
    if (!self.clipsToBounds) {
        self.clipsToBounds = YES;
    }
}

- (void)setupBorderWithColor:(UIColor *)color width:(CGFloat)width
{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (void)setupShadowWithColor:(UIColor *)color alpha:(CGFloat)alpha shadowOffset:(CGSize)offset shadowRadius:(CGFloat)radius
{
    self.layer.shadowOpacity = alpha;
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
}

- (void)addConstraintWithAttribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:attr1 relatedBy:relation toItem:view attribute:attr2 multiplier:multiplier constant:constant];
    [self addConstraint:constraint];
}

@end
