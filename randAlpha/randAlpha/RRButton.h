//
//  RRButton.h
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTPressableButton.h"

@interface RRButton : NSObject

+ (HTPressableButton *) createButton:(CGPoint)foregroundPosition;

@end
