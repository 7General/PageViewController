//
//  GKPageTableView.m
//  PageController
//
//  Created by zzg on 2019/2/13.
//  Copyright © 2019 zzg. All rights reserved.
//

#import "MSPageTableView.h"

@implementation MSPageTableView
// 允许多个手势
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}


@end
