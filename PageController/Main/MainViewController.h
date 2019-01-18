//
//  MainViewController.h
//  PageController
//
//  Created by zzg on 2019/1/16.
//  Copyright © 2019 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static CGFloat const kWMHeaderViewHeight = 200;
static CGFloat const kNavigationBarHeight = 64;

@interface MainViewController : UIViewController<UIScrollViewDelegate>

@property (nonatomic, assign) CGFloat viewTop;

@end

NS_ASSUME_NONNULL_END
