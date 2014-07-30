//
//  RRButton.m
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRButton.h"

#define IPAD     UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

@implementation RRButton

+ (HTPressableButton *) createButton:(CGPoint)foregroundPosition {
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width -
                              [UIScreen mainScreen].bounds.size.width / 2 -
                              [UIScreen mainScreen].bounds.size.width / 4, foregroundPosition.y - (IPAD ? 50 : 25),
                              [UIScreen mainScreen].bounds.size.width / 2, (IPAD ? 100 : 50));
    HTPressableButton *roundedRectButton = [[HTPressableButton alloc] initWithFrame:frame
                                                                        buttonStyle:HTPressableButtonStyleRounded];
    [roundedRectButton setTitle:@"New Letter" forState:UIControlStateNormal];    
    return (roundedRectButton);
}

@end
