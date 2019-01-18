//
//  ReuseViewController.m
//  PageController
//
//  Created by zzg on 2019/1/16.
//  Copyright © 2019 zzg. All rights reserved.
//

#import "ReuseViewController.h"

@interface ReuseViewController ()//<UITableViewDelegate,UITableViewDataSource>
//@property (nonatomic, strong) UITableView * myTableView;
@end

@implementation ReuseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 300, 500) style:UITableViewStylePlain];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ids"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ids"];
    }
    cell.textLabel.text = @"asdf";
    cell.textLabel.textColor = [UIColor redColor];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (void)dealloc {
    NSLog(@"----=-=-=ReuseViewController---dealloc");
}


@end
