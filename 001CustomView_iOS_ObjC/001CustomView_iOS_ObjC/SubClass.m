//
//  SubClass.m
//  001CustomView_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/21/15.
//  Copyright (c) 2015 Henry Ambicho Trujillo. All rights reserved.
//

#import "SubClass.h"

@interface SubClass()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISwitch *onSwitch;

@end



@implementation SubClass

//Note: You can customize the behavior after calling the super method

//Calling when loading programmatically
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Call a common method to setup gesture and state of UIVIew
//        [self ];
    }
    return self;
}

// Called when loading from embedded .xib UIView
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        // Call a common method to setup gesture and state of UIView
        
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

-(void)setup {
    // Add a gesture to show that touch input works on full bounds of UIView
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    [self addGestureRecognizer:panGesture];
}

-(void)handlePanGesture:(UIPanGestureRecognizer *)gesture {
    NSLog(@"Pan: %@", NSStringFromCGPoint([gesture locationInView:gesture.view]));
}

- (IBAction)switchChanged:(UISwitch *)sender {
    
    NSLog(@"Switch: %d", sender.on);
}




@end
