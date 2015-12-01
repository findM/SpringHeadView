//
//  UIScrollView+SpringHeadView.h
//  Sample
//
//  Created by 陈光临 on 15/12/2.
//  Copyright © 2015年 cn.chenguanglin. All rights reserved.
//

#import <UIKit/UIKit.h>
//headView 的高度
#define SpringHeadViewHeight 200

@interface UIScrollView (SpringHeadView)<UIScrollViewDelegate>

@property (nonatomic, weak) UIView *topView;

- (void)addSpringHeadView:(UIView *)view;

@end


