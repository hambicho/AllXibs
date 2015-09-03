//
//  ViewController.m
//  003StoryboradWithCellXib_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 9/3/15.
//  Copyright (c) 2015 MELI. All rights reserved.
//

#import "ViewController.h"

#import "MyCustomCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *items;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
  _items = @[@"Uno",@"Dos",@"Tres",@"Cuatro",@"Cinco",@"Seis",@"Siete",@"Ocho",@"Nueve",@"Diez",@"Once",@"Doce"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_items count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"myCell"];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
//    }
//    cell.textLabel.text = [_items objectAtIndex:indexPath.row];
//    return cell;
    
    
    MyCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"MyCustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(MyCustomCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.leftLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.rightLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.middleLabel.text = [self.items objectAtIndex:indexPath.row];
}




@end
