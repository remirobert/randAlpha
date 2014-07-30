//
//  RRColor.h
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTPressableButton.h"

@interface RRColor : NSObject

+ (void) blackTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) greenTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) greenVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) blueTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) blueVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) redTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) orangeTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) grayTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;
+ (void) grayVariantTheme:(UIView *)background withForeground:(UIView *)foreground andButton:(HTPressableButton *)button;

@end
