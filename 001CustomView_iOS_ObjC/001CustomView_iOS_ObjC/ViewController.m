//
//  ViewController.m
//  001CustomView_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/21/15.
//  Copyright (c) 2015 Henry Ambicho Trujillo. All rights reserved.
//

#import "ViewController.h"

#import "SubClass.h"
#import "LabelMadness.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Add a custom view's programmatically (position using 1/2 width and height )
    SubClass *oneView = [[SubClass alloc] init];
    oneView.center = CGPointMake(80 + 80, 282 + 40);
    oneView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:oneView];

    
    LabelMadness *labelMadness = [[LabelMadness alloc] init];
    labelMadness.center = CGPointMake(60 + 100, 370 + 50);
    labelMadness.backgroundColor = [UIColor greenColor];
    [self.view addSubview:labelMadness];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
