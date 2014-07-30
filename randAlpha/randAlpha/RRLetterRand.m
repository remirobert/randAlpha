//
//  RRLetterRand.m
//  SpeechAlphabet
//
//  Created by remi on 07/06/14.
//  Copyright (c) 2014 remi. All rights reserved.
//

#import "RRLetterRand.h"

@interface RRLetterRand ()
@end

@implementation RRLetterRand

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _letter = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.width)];
        
        _letter.textAlignment = NSTextAlignmentCenter;
        _letter.text = @"...";
        _letter.font = [UIFont fontWithName:@"manteka" size:frame.size.width];
        [self addSubview:_letter];        
    }
    return self;
}

@end
