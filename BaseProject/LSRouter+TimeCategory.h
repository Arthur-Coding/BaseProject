//
//  LSRouter+TimeCategory.h
//  BaseProject
//
//  Created by ArthurShuai on 2017/9/25.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//
//  文档名称：时间处理工具
//  功能描述：时间处理工具，时间、时间戳、时间字符串相关转换

#import <LSRouter/LSRouter.h>

@interface LSRouter (TimeCategory)

/**
 *  字符串转NSDate
 *
 *  @param timeStr 字符串时间
 *  @param format  转化格式 如yyyy-MM-dd HH:mm:ss,即2016-07-26 15:00:00
 *
 *  @return 格式化时间
 */
+ (NSDate *)time_dateFromString:(NSString *)timeStr
                    format:(NSString *)format;

/**
 *  NSDate转时间戳
 *
 *  @param date 字符串时间
 *
 *  @return 返回时间戳
 */
+ (NSInteger)time_cTimestampFromDate:(NSDate *)date;

/**
 *  字符串转时间戳
 *
 *  @param timeStr 字符串时间
 *  @param format  转化格式 如yyyy-MM-dd HH:mm:ss,即2016-07-26 15:00:00
 *
 *  @return 返回时间戳的字符串
 */
+ (NSInteger)time_cTimestampFromString:(NSString *)timeStr
                          format:(NSString *)format;


/**
 *  时间戳转字符串
 *
 *  @param timeStamp 时间戳
 *  @param format    转化格式 如yyyy-MM-dd HH:mm:ss,即2016-07-26 15:00:00
 *
 *  @return 返回字符串格式时间
 */
+ (NSString *)time_dateStrFromCstampTime:(NSInteger)timeStamp
                     withDateFormat:(NSString *)format;

/**
 *  NSDate转字符串
 *
 *  @param date   NSDate时间
 *  @param format 转化格式 如yyyy-MM-dd HH:mm:ss,即2016-07-26 15:00:00
 *
 *  @return 返回字符串格式时间
 */
+ (NSString *)time_datestrFromDate:(NSDate *)date
               withDateFormat:(NSString *)format;

@end
