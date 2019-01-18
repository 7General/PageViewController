//
//  PageViewController.m
//  PageController
//
//  Created by zzg on 2019/1/16.
//  Copyright © 2019 zzg. All rights reserved.
//

#import "PageViewController.h"
#import "PageScrollView.h"
#import "ReuseViewController.h"

@interface PageViewController ()<UIScrollViewDelegate>

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    PageScrollView * scrollView = [[PageScrollView alloc] initWithFrame:self.view.frame];
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 200);
    
    UIView * headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    headerView.backgroundColor = [UIColor grayColor];
    [scrollView addSubview:headerView];
    
    
    ReuseViewController * wm = [[ReuseViewController alloc] init];
    [self addChildViewController:wm];
    wm.view.frame = CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height);
    [wm didMoveToParentViewController:self];
    [scrollView addSubview:wm.view];
    

}


- (void)dealloc {
    NSLog(@"----=-=-=PageViewController---dealloc");
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (![scrollView isKindOfClass:[PageScrollView class]]) return;
}
@end
