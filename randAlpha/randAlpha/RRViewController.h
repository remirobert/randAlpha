//
//  RRViewController.h
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUISwitch.h"
#import "POP.h"

@interface RRViewController : UIViewController <POPAnimationDelegate>

@property (nonatomic, strong) NSMutableArray *history;
@property (nonatomic, strong) UIScrollView *scrollHistory;
@property (nonatomic, strong) UIView *foreground;
@property (nonatomic, strong) UIView *menu;
@property (nonatomic, strong) FUISwitch *switchVoice;
@property (nonatomic, assign) BOOL voice;

- (void) changeTheme:(int)index;

@end
