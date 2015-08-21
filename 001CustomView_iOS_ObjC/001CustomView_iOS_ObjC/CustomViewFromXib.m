//
//  CustomViewFromXib.m
//  001CustomView_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/21/15.
//  Copyright (c) 2015 Henry Ambicho Trujillo. All rights reserved.
//

#import "CustomViewFromXib.h"

@implementation CustomViewFromXib

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // 1.- Load the .xib file .xib file must match classname
        NSString *className = NSStringFromClass([self class]);
        _customView = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        
        // 2.- Set the bounds if not set by programmer (i.e. init called)
        if (CGRectIsEmpty(frame)) {
            self.bounds = _customView.bounds;
        }
        
        // 3.- Add as a subview
        [self addSubview:_customView];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        // 1.- Load .xib file
        NSString *className = NSStringFromClass([self class]);
        _customView = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        
        // 2.- Add as Subvview
        [self addSubview:_customView];
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



@end
