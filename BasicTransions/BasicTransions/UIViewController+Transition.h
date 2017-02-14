//
//  UIViewController+Transition.h
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TransitionStyle) {
    Default = 0,
    Modally,
    Popover
};

@interface UIViewController (Transition)<UIPopoverPresentationControllerDelegate>

// Transition
- (void)transitionToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle;
- (void)transitionToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source;

// Navigation
- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController;
- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle;
- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source;

// Tabbar
- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs;
- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs transitionStyle:(TransitionStyle)transitionStyle;
- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source;



@end
