//
//  LabelMadness.m
//  001CustomView_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/21/15.
//  Copyright (c) 2015 Henry Ambicho Trujillo. All rights reserved.
//

#import "LabelMadness.h"

@implementation LabelMadness

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"LabelMadness.initWithFram:");
        // Customize logic
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"ButtonPressed.");
    
}
@end
