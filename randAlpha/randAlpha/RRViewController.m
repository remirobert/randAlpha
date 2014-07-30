//
//  RRViewController.m
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRViewController.h"
#import <AVFoundation/AVSpeechSynthesis.h>
#import "RRColor.h"
#import "RRButton.h"
#import "RRLetterRand.h"
#import "RRViewController+History.h"
#import "RRViewController+Menu.h"
#import "UIColor+FlatUI.h"

#define IPAD     UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

@interface RRViewController ()
@property (nonatomic, strong) HTPressableButton *button;
@property (strong) RRLetterRand *letter;
@property (nonatomic, assign) BOOL isMenu;
@end

@implementation RRViewController

- (void) changeTheme:(int)index {
    switch (index) {
        case 0:
            [RRColor blackTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 1:
            [RRColor greenTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 2:
            [RRColor greenVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 3:
            [RRColor blueTheme:self.view withForeground:_foreground andButton:_button];
            break;
        
        case 4:
            [RRColor blueVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 5:
            [RRColor redTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 6:
            [RRColor orangeTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 7:
            [RRColor grayTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 8:
            [RRColor grayVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        default:
            break;
    }
    _menu.backgroundColor = _foreground.backgroundColor;
    if (_letter != nil)
        _letter.letter.textColor = _foreground.backgroundColor;
    
    for (UIView *i in [self.scrollHistory subviews]) {
        if ([i isKindOfClass:[RRLetterRand class]])
            ((RRLetterRand *)i).letter.textColor = self.view.backgroundColor;
    }
}

- (NSString *) randLetter {
    char caractere = rand() % 26 + 'A';
    
    return ([NSString stringWithFormat:@"%c", caractere]);
}

- (void) speechLetter {
    if (_voice == NO)
        return ;
    AVSpeechUtterance *v = [[AVSpeechUtterance alloc] initWithString:[_letter.letter.text lowercaseString]];
    
    AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"us-US"];
    
    v.voice = voice;
    v.rate = 0.1;
    
    AVSpeechSynthesizer *c = [[AVSpeechSynthesizer alloc] init];
    
    [c speakUtterance:v];
}

- (void) removeCurrentLetter {
    POPSpringAnimation *popAnimation = [POPSpringAnimation animation];
    popAnimation.delegate = self;
    popAnimation.name = @"remove";
    
    popAnimation.property = [POPAnimatableProperty propertyWithName:kPOPLayerPositionX];
    popAnimation.toValue = @(([UIScreen mainScreen].bounds.size.width + _letter.frame.size.width / 2));
    
    popAnimation.springSpeed = 100;
    popAnimation.springBounciness = 0;
    [_letter pop_addAnimation:popAnimation forKey:@"remove"];
    [self addHistory:_letter.letter.text];
}

- (void) moveNewLetter {
    if (_letter == nil) {
        _letter = [[RRLetterRand alloc] initWithFrame:CGRectMake(-200,
                                                                        ([UIScreen mainScreen].bounds.size.height - (IPAD ? 500 : 150)) / 4,
                                                                        [UIScreen mainScreen].bounds.size.width / 2,
                                                                        [UIScreen mainScreen].bounds.size.width / 2)];
        [self.view addSubview:_letter];
    }
    else {
        _letter.frame = CGRectMake(-200,
                                   ([UIScreen mainScreen].bounds.size.height - (IPAD ? 500 : 150)) / 4,
                                   [UIScreen mainScreen].bounds.size.width / 2,
                                   [UIScreen mainScreen].bounds.size.width / 2);
    }
    _letter.letter.textColor = _foreground.backgroundColor;
    _letter.letter.text = [self randLetter];
    
    POPSpringAnimation *popAnimation = [POPSpringAnimation animation];
    popAnimation.delegate = self;
    
    popAnimation.name = @"go";
    popAnimation.property = [POPAnimatableProperty propertyWithName:kPOPLayerPositionX];
    popAnimation.toValue = @(([UIScreen mainScreen].bounds.size.width / 2));
    
    popAnimation.springSpeed = 6.0;
    popAnimation.springBounciness = 10.0;
    
    [_letter pop_addAnimation:popAnimation forKey:@"go"];
}

- (void) clicButton {
    if (_isMenu == YES) {
        _isMenu = NO;
        [self disableMenu];
        [_button setTitle:@"New Letter" forState:UIControlStateNormal];
        return ;
    }
    
    if (_letter != nil && ([_letter pop_animationForKey:@"remove"] != nil ||
                           [_letter pop_animationForKey:@"go"] != nil))
        return ;
    
    if (_letter != nil) {
        [self removeCurrentLetter];
    }
    else
        [self moveNewLetter];
}

- (void) initForeground {
    _foreground = [[UIView alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (IPAD ? 300 : 150),
                                                           [UIScreen mainScreen].bounds.size.width, (IPAD ? 300 : 150))];
    
    [self.view addSubview:_foreground];
}

- (void) inintButton {
    _button = [RRButton createButton:_foreground.frame.origin];
    
    [_button addTarget:self action:@selector(clicButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];    
}

- (void) pop_animationDidStop:(POPAnimation *)anim finished:(BOOL)finished {
    
    if ([anim.name isEqualToString:@"remove"]) {
        [self moveNewLetter];
    }
    else if ([anim.name isEqualToString:@"go"]) {
        [self speechLetter];
    }
}

- (void) menuAction {
    _isMenu = YES;
    [_button setTitle:@"OK" forState:UIControlStateNormal];
    [self showMenu];
}

- (void) initTheme {
    NSInteger index = [[NSUserDefaults standardUserDefaults] integerForKey:@"theme"];
    
    NSLog(@"%d", index);
    switch (index) {
        case 0:
            [RRColor blackTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 1:
            [RRColor greenTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 2:
            [RRColor greenVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 3:
            [RRColor blueTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 4:
            [RRColor blueVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;
        
        case 5:
            [RRColor redTheme:self.view withForeground:_foreground andButton:_button];
            break;
            
        case 6:
            [RRColor orangeTheme:self.view withForeground:_foreground andButton:_button];
            break;

        case 7:
            [RRColor grayTheme:self.view withForeground:_foreground andButton:_button];
            break;

        case 8:
            [RRColor grayVariantTheme:self.view withForeground:_foreground andButton:_button];
            break;

        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _voice = YES;
    
    UIButton *menuButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    [menuButton setTitle:@"=" forState:UIControlStateNormal];
    [menuButton addTarget:self action:@selector(menuAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:menuButton];
    
    _isMenu = NO;
    
    [self initForeground];
    [self inintButton];
    [self initScrollHistory];
    [self initTheme];
}

@end
