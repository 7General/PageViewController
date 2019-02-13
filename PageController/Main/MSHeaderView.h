//
//  MSHeaderView.h
//  PageController
//
//  Created by zzg on 2019/2/13.
//  Copyright © 2019 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define kWYHeaderHeight (kScreenW * 500.0f / 750.0f - kNavBarHeight)

@interface MSHeaderView : UIView

@property (nonatomic, strong) UILabel               *nameLabel;

@end

NS_ASSUME_NONNULL_END
