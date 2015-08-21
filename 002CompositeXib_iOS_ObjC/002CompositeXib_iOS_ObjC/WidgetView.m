//
//  WidgetView.m
//  002CompositeXib_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/21/15.
//  Copyright (c) 2015 Henry Ambicho Trujillo. All rights reserved.
//

#import "WidgetView.h"

@implementation WidgetView



-(instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    [[NSBundle mainBundle] loadNibNamed:@"WidgetView" owner:self options:nil];
    [self addSubview:self.view];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
