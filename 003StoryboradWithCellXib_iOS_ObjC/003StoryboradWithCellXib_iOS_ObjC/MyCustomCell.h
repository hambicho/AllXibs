//
//  MyCustomCell.h
//  003StoryboradWithCellXib_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 9/3/15.
//  Copyright (c) 2015 MELI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;


@end
