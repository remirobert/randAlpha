//
//  RRViewController+History.h
//  SpeechAlphabet
//
//  Created by remi on 08/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRViewController.h"

@interface RRViewController (History)

- (void) initScrollHistory;
- (void) addHistory:(NSString *)letter;

@end
