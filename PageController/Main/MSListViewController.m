//
//  MSListViewController.m
//  PageController
//
//  Created by zzg on 2019/2/13.
//  Copyright © 2019 zzg. All rights reserved.
//

#import "MSListViewController.h"

@interface MSListViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) void(^listScrollViewScrollBlock)(UIScrollView *scrollView);

@property (nonatomic, strong) UITableView   *tableView;

@end

@implementation MSListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.frame;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"listCell"];
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [NSString stringWithFormat:@"第%zd行", indexPath.row + 1];
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    !self.listScrollViewScrollBlock ? : self.listScrollViewScrollBlock(scrollView);
}

#pragma mark - GKPageListViewDelegate
- (UIScrollView *)listScrollView {
    return self.tableView;
}

- (void)listViewDidScrollCallback:(void (^)(UIScrollView * _Nonnull))callback {
    self.listScrollViewScrollBlock = callback;
}


#pragma mark - 懒加载
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return _tableView;
}


@end
