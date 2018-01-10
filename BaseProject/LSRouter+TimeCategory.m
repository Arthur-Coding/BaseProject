//
//  LSRouter+TimeCategory.m
//  BaseProject
//
//  Created by ArthurShuai on 2017/9/25.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//

#import "LSRouter+TimeCategory.h"

@implementation LSRouter (TimeCategory)

static NSDateFormatter *dateFormatter;

+ (NSDateFormatter *)defaultFormatter{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc]init];
    });
    return dateFormatter;
}

+ (NSDate *)time_dateFromString:(NSString *)timeStr
                    format:(NSString *)format{
    NSDateFormatter *dateFormatter = [LSRouter defaultFormatter];
    [dateFormatter setDateFormat:format];
    NSDate *date = [dateFormatter dateFromString:timeStr];
    return date;
}

+ (NSInteger)time_cTimestampFromDate:(NSDate *)date{
    return (long)[date timeIntervalSince1970];
}


+ (NSInteger)time_cTimestampFromString:(NSString *)timeStr
                          format:(NSString *)format{
    NSDate *date = [LSRouter time_dateFromString:timeStr format:format];
    return [LSRouter time_cTimestampFromDate:date];
}

+ (NSString *)time_dateStrFromCstampTime:(NSInteger)timeStamp
                     withDateFormat:(NSString *)format{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    return [LSRouter time_datestrFromDate:date withDateFormat:format];
}

+ (NSString *)time_datestrFromDate:(NSDate *)date
               withDateFormat:(NSString *)format{
    NSDateFormatter* dateFormat = [LSRouter defaultFormatter];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:date];
}

@end
