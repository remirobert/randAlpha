//
//  RRColor.m
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRColor.h"

@implementation RRColor

+ (void) blackTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:31.0 / 255.0 green:36.0 / 255.0 blue:58.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:21.0 / 255.0 green:25.0 / 255.0 blue:46.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(21.0 + 15.0) / 255.0 green:(25.0 + 15.0) / 255.0 blue:(46.0 + 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(31.0 + 25.0) / 255.0 green:(36.0 + 25.0) / 255.0 blue:(58.0 + 25.0) / 255.0 alpha:1];
}

+ (void) greenTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:111.0 / 255.0 green:171.0 / 255.0 blue:40.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:69.0 / 255.0 green:114.0 / 255.0 blue:32.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(69.0 - 15.0) / 255.0 green:(114.0 - 15.0) / 255.0 blue:(32.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(111.0 - 25.0) / 255.0 green:(171.0 - 25.0) / 255.0 blue:(40.0 - 25.0) / 255.0 alpha:1];
}

+ (void) greenVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:24.0 / 255.0 green:184.0 / 255.0 blue:98.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:16.0 / 255.0 green:123.0 / 255.0 blue:75.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(16.0 - 15.0) / 255.0 green:(123.0 - 15.0) / 255.0 blue:(75.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(24.0 - 25.0) / 255.0 green:(184.0 - 25.0) / 255.0 blue:(98.0 - 25.0) / 255.0 alpha:1];
}

+ (void) blueTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:28.0 / 255.0 green:151.0 / 255.0 blue:192.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:19.0 / 255.0 green:111.0 / 255.0 blue:134.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(19.0 - 15.0) / 255.0 green:(111.0 - 15.0) / 255.0 blue:(134.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(28.0 - 25.0) / 255.0 green:(151.0 - 25.0) / 255.0 blue:(192.0 - 25.0) / 255.0 alpha:1];
}

+ (void) blueVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:53.0 / 255.0 green:142.0 / 255.0 blue:170.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:35.0 / 255.0 green:95.0 / 255.0 blue:120.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(35.0 - 15.0) / 255.0 green:(95.0 - 15.0) / 255.0 blue:(120.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(53.0 - 25.0) / 255.0 green:(142.0 - 25.0) / 255.0 blue:(170.0 - 25.0) / 255.0 alpha:1];
}

+ (void) redTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:236.0 / 255.0 green:34.0 / 255.0 blue:64.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:158.0 / 255.0 green:25.0 / 255.0 blue:50.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(158.0 - 15.0) / 255.0 green:(25.0 - 15.0) / 255.0 blue:(50.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(236.0 - 25.0) / 255.0 green:(34.0 - 25.0) / 255.0 blue:(64.0 - 25.0) / 255.0 alpha:1];
}

+ (void) orangeTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:227.0 / 255.0 green:46.0 / 255.0 blue:34.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:150.0 / 255.0 green:32.0 / 255.0 blue:27.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(150.0 - 15.0) / 255.0 green:(32.0 - 15.0) / 255.0 blue:(27.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(227.0 - 25.0) / 255.0 green:(46.0 - 25.0) / 255.0 blue:(34.0 - 25.0) / 255.0 alpha:1];
}

+ (void) grayTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:50.0 / 255.0 green:50.0 / 255.0 blue:50.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:30.0 / 255.0 green:30.0 / 255.0 blue:30.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(30.0 - 15.0) / 255.0 green:(30.0 - 15.0) / 255.0 blue:(30.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(50.0 - 25.0) / 255.0 green:(50.0 - 25.0) / 255.0 blue:(50.0 - 25.0) / 255.0 alpha:1];
}

+ (void) grayVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button {
    background.backgroundColor = [UIColor colorWithRed:49.0 / 255.0 green:72.0 / 255.0 blue:87.0 / 255.0 alpha:1];
    foreground.backgroundColor = [UIColor colorWithRed:32.0 / 255.0 green:48.0 / 255.0 blue:68.0 / 255.0 alpha:1];
    button.shadowColor = [UIColor colorWithRed:(32.0 - 15.0) / 255.0 green:(48.0 - 15.0) / 255.0 blue:(68.0 - 15.0) / 255.0 alpha:1];
    button.buttonColor = [UIColor colorWithRed:(49.0 - 25.0) / 255.0 green:(72.0 - 25.0) / 255.0 blue:(87.0 - 25.0) / 255.0 alpha:1];
}

@end
