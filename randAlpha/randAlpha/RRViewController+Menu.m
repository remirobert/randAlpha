//
//  RRViewController+Menu.m
//  randAlpha
//
//  Created by remi on 08/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRViewController+Menu.h"
#import "HTPressableButton.h"
#import "FUISwitch.h"
#import "UIColor+FlatUI.h"

@implementation RRViewController (Menu)

- (void) clicButtonTheme:(UIButton *)button {
    [self changeTheme:(int)button.tag];
    [[NSUserDefaults standardUserDefaults] setInteger:(int)button.tag forKey:@"theme"];
}

- (void) skinButtonTheme :(int)index :(HTPressableButton *)button {
    
    switch (index) {
        case 0:
            button.buttonColor = [UIColor colorWithRed:31.0 / 255.0 green:36.0 / 255.0 blue:58.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:21.0 / 255.0 green:25.0 / 255.0 blue:46.0 / 255.0 alpha:1];
            break;
            
        case 1:
            button.buttonColor = [UIColor colorWithRed:111.0 / 255.0 green:171.0 / 255.0 blue:40.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:69.0 / 255.0 green:114.0 / 255.0 blue:32.0 / 255.0 alpha:1];
            break;
            
        case 2:
            button.buttonColor = [UIColor colorWithRed:24.0 / 255.0 green:184.0 / 255.0 blue:98.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:16.0 / 255.0 green:123.0 / 255.0 blue:75.0 / 255.0 alpha:1];
            break;
            
        case 3:
            button.buttonColor = [UIColor colorWithRed:28.0 / 255.0 green:151.0 / 255.0 blue:192.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:19.0 / 255.0 green:111.0 / 255.0 blue:134.0 / 255.0 alpha:1];
            break;
        
        case 4:
            button.buttonColor = [UIColor colorWithRed:53.0 / 255.0 green:142.0 / 255.0 blue:170.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:35.0 / 255.0 green:95.0 / 255.0 blue:120.0 / 255.0 alpha:1];
            break;
            
        case 5:
            button.buttonColor = [UIColor colorWithRed:236.0 / 255.0 green:34.0 / 255.0 blue:64.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:158.0 / 255.0 green:25.0 / 255.0 blue:50.0 / 255.0 alpha:1];
            break;
            
        case 6:
            button.buttonColor = [UIColor colorWithRed:227.0 / 255.0 green:46.0 / 255.0 blue:34.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:150.0 / 255.0 green:32.0 / 255.0 blue:27.0 / 255.0 alpha:1];
            break;
            
        case 7:
            button.buttonColor = [UIColor colorWithRed:50.0 / 255.0 green:50.0 / 255.0 blue:50.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:30.0 / 255.0 green:30.0 / 255.0 blue:30.0 / 255.0 alpha:1];
            break;
            
        case 8:
            button.buttonColor = [UIColor colorWithRed:49.0 / 255.0 green:72.0 / 255.0 blue:87.0 / 255.0 alpha:1];
            button.shadowColor = [UIColor colorWithRed:32.0 / 255.0 green:48.0 / 255.0 blue:68.0 / 255.0 alpha:1];
            break;
            
        default:
            break;
    }
}

- (void) changeVoiceStatus {
    if (self.voice == NO)
        self.voice = YES;
    else
        self.voice = NO;
}

- (void) initMenuView {
    UIScrollView *scrollButtonTheme = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0,
                                                                                     [UIScreen mainScreen].bounds.size.width, 100)];
    
    scrollButtonTheme.contentSize = CGSizeMake(100 * 9 - 10, 100);
    scrollButtonTheme.showsHorizontalScrollIndicator = NO;
    
    CGRect frame;
    int x = 0;
    
    for (int i = 0; i < 9; i++) {
        frame = CGRectMake(x, 0, 90, 90);
        x += 100;
        HTPressableButton *rectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRect];
        [rectButton setTitle:@"" forState:UIControlStateNormal];
        rectButton.tag = i;
        [self skinButtonTheme:i :rectButton];
        
        [rectButton addTarget:self action:@selector(clicButtonTheme:) forControlEvents:UIControlEventTouchUpInside];
        
        [scrollButtonTheme addSubview:rectButton];
    }
    
    self.switchVoice = [[FUISwitch alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 250) / 2, 120, 250, 50)];
    
    self.switchVoice.onColor = [UIColor cloudsColor];
    self.switchVoice.offColor = [UIColor cloudsColor];
    self.switchVoice.onBackgroundColor = self.menu.backgroundColor;
    self.switchVoice.offBackgroundColor = [UIColor midnightBlueColor];
    self.switchVoice.onLabel.text = @"Voice ON";
    self.switchVoice.offLabel.text = @"Voice OFF";

    [self.switchVoice addTarget:self action:@selector(changeVoiceStatus) forControlEvents:UIControlEventValueChanged];
    
    [self.menu addSubview:scrollButtonTheme];
    [self.menu addSubview:self.switchVoice];
}

- (void) showMenu {
    if (self.menu == nil) {
        self.menu = [[UIView alloc] initWithFrame:CGRectMake(0, -200,
                                                            [UIScreen mainScreen].bounds.size.width,
                                                            200)];
        [self initMenuView];
    }
    else {
        self.menu.frame = CGRectMake(0, -200,
                                     [UIScreen mainScreen].bounds.size.width,
                                     200);
    }
    
    self.menu.backgroundColor = self.foreground.backgroundColor;
    [self.view addSubview:self.menu];

    POPSpringAnimation *popAnimation = [POPSpringAnimation animation];
    
    popAnimation.property = [POPAnimatableProperty propertyWithName:kPOPLayerPositionY];
    popAnimation.toValue = @((100));
    
    popAnimation.springSpeed = 6.0;
    popAnimation.springBounciness = 10.0;
    
    [self.menu pop_addAnimation:popAnimation forKey:@"go"];
}

- (void) disableMenu {
    POPSpringAnimation *popAnimation = [POPSpringAnimation animation];
    
    popAnimation.property = [POPAnimatableProperty propertyWithName:kPOPLayerPositionY];
    popAnimation.toValue = @((-200));
    
    popAnimation.springSpeed = 6.0;
    popAnimation.springBounciness = 10.0;
    
    [self.menu pop_addAnimation:popAnimation forKey:@"go"];
}

@end
