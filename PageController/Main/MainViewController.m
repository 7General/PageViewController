//
//  MainViewController.m
//  PageController
//
//  Created by zzg on 2019/1/16.
//  Copyright © 2019 zzg. All rights reserved.
//

#import "MainViewController.h"
#import "WMPageController.h"
#import "WMPanGestureRecognizer.h"
#import "MainViewController.h"
#import "PageViewController.h"
#import "ReuseViewController.h"

static CGFloat const kWMMenuViewHeight = 44.0;
@interface MainViewController ()//<UIGestureRecognizerDelegate,WMPageControllerDataSource>

@property (nonatomic, strong) WMPageController * wmViewController;

@property (nonatomic, strong) NSArray *musicCategories;
@property (nonatomic, strong) WMPanGestureRecognizer *panGesture;
@property (nonatomic, assign) CGPoint lastPoint;
@property (nonatomic, strong) UIView *redView;

@end

@implementation MainViewController

- (NSArray *)musicCategories {
    if (!_musicCategories) {
        _musicCategories = @[@"单曲", @"详情", @"歌词"];
    }
    return _musicCategories;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.wmViewController = [[WMPageController alloc] init];
//    self.wmViewController.dataSource = self;
//    self.wmViewController.titleSizeNormal = 155;
//    self.wmViewController.titleSizeSelected = 15;
//    self.wmViewController.menuViewStyle = WMMenuViewStyleLine;
//    self.wmViewController.menuItemWidth =  [UIScreen mainScreen].bounds.size.width / self.musicCategories.count;
//    self.viewTop = kNavigationBarHeight + kWMHeaderViewHeight;
//    self.wmViewController.titleColorSelected = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
//    self.wmViewController.titleColorNormal = [UIColor colorWithRed:0.4 green:0.8 blue:0.1 alpha:1.0];
//    [self addChildViewController:self.wmViewController];
////    self.wmViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//
//    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, kNavigationBarHeight, [UIScreen mainScreen].bounds.size.width, kWMHeaderViewHeight)];
//    redView.backgroundColor = [UIColor redColor];
//    self.redView = redView;
//    [self.view addSubview:self.redView];
//    self.panGesture = [[WMPanGestureRecognizer alloc] initWithTarget:self action:@selector(panOnView:)];
//    [self.view addGestureRecognizer:self.panGesture];
    
   
    PageViewController * pageView = [[PageViewController alloc] init];
    pageView.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self addChildViewController:pageView];
    [self.view addSubview:pageView.view];
    [pageView didMoveToParentViewController:self];
    
    
}

//- (void)panOnView:(WMPanGestureRecognizer *)recognizer {
//    NSLog(@"pannnnnning received..");
//
//    CGPoint currentPoint = [recognizer locationInView:self.view];
//
//    if (recognizer.state == UIGestureRecognizerStateBegan) {
//        self.lastPoint = currentPoint;
//    } else if (recognizer.state == UIGestureRecognizerStateEnded) {
//
//        CGPoint velocity = [recognizer velocityInView:self.view];
//        CGFloat targetPoint = velocity.y < 0 ? kNavigationBarHeight : kNavigationBarHeight + kWMHeaderViewHeight;
//        NSTimeInterval duration = fabs((targetPoint - self.viewTop) / velocity.y);
//
//        if (fabs(velocity.y) * 1.0 > fabs(targetPoint - self.viewTop)) {
//            NSLog(@"velocity: %lf", velocity.y);
//            [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
//                self.viewTop = targetPoint;
//            } completion:nil];
//
//            return;
//        }
//
//    }
//    CGFloat yChange = currentPoint.y - self.lastPoint.y;
//
//    self.viewTop += yChange;
//    self.lastPoint = currentPoint;
//}
//
//// MARK: ChangeViewFrame (Animatable)
//- (void)setViewTop:(CGFloat)viewTop {
//    _viewTop = viewTop;
//
//    if (_viewTop <= kNavigationBarHeight) {
//        _viewTop = kNavigationBarHeight;
//    }
//
//    if (_viewTop > kWMHeaderViewHeight + kNavigationBarHeight) {
//        _viewTop = kWMHeaderViewHeight + kNavigationBarHeight;
//    }
//
//    self.redView.frame = ({
//        CGRect oriFrame = self.redView.frame;
//        oriFrame.origin.y = _viewTop - kWMHeaderViewHeight;
//        oriFrame;
//    });
//
//    [self.wmViewController forceLayoutSubviews];
//}
//
//#pragma mark - Datasource & Delegate
//- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
//    return self.musicCategories.count;
//}
//
//- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
//    MainViewController *vc = [[MainViewController alloc] init];
//    return vc;
//}
//
//- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
//    return self.musicCategories[index];
//}
//
//- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
//    return CGRectMake(0, _viewTop, self.view.frame.size.width, kWMMenuViewHeight);
//}
//
//- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
//    CGFloat originY = _viewTop + kWMMenuViewHeight;
//    return CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
//}

#pragma mark MSPageControllerDataSource




@end
