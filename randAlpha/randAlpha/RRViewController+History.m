//
//  RRViewController+History.m
//  SpeechAlphabet
//
//  Created by remi on 08/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRViewController+History.h"
#import "RRLetterRand.h"

#define IPAD     UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

@implementation RRViewController (History)

- (void) addHistory:(NSString *)letter {
    RRLetterRand *new_history = [[RRLetterRand alloc] initWithFrame:CGRectMake([self.history count] * self.scrollHistory.frame.size.height, 0,
                                                                               self.scrollHistory.frame.size.height,
                                                                               self.scrollHistory.frame.size.height)];
    [self.history addObject:letter];
    new_history.letter.text = letter;
    new_history.letter.textColor = self.view.backgroundColor;
    self.scrollHistory.contentSize = CGSizeMake([self.history count] * self.scrollHistory.frame.size.height,
                                                self.scrollHistory.frame.size.height);
    [self.scrollHistory addSubview:new_history];
    
    if ([self.history count] > (IPAD ? 4 : 3))
        [self.scrollHistory setContentOffset:CGPointMake(([self.history count] - (IPAD ? 4 : 3)) *
                                                         self.scrollHistory.frame.size.height, 0) animated:YES];
}

- (void) initScrollHistory {
    self.history = [[NSMutableArray alloc] init];
    self.scrollHistory = [[UIScrollView alloc] initWithFrame:CGRectMake(0, (IPAD ? 100 : 50), self.foreground.frame.size.width,
                                                                        self.foreground.frame.size.height - (IPAD ? 100 : 50))];
    self.scrollHistory.alwaysBounceHorizontal = YES;
    self.scrollHistory.showsHorizontalScrollIndicator = NO;
    [self.foreground addSubview:self.scrollHistory];
}

@end
