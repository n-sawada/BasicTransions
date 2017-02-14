//
//  UIViewController+Transition.m
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import "UIViewController+Transition.h"


@implementation UIViewController (Transition)

- (void)transitionToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle {
    
    switch (transitionStyle) {
        case Default:
        case Modally:
            [self transitionToViewController:viewController transitionStyle:transitionStyle source:nil];
            break;
        case Popover:
            [self transitionToViewController:viewController transitionStyle:transitionStyle source:self.view];
            break;
    }
}

- (void)transitionToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source {
    
    switch (transitionStyle) {
        case Default:
        case Modally:
            [self presentViewController:viewController animated:YES completion:nil];
            break;
        case Popover:
            [self configureDefaultPopoverViewController:viewController source:source];
        default:
            break;
    }
}


- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController {
    [self transitionNavigationStyleToViewController:viewController transitionStyle:Default];
}

- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle {
    switch (transitionStyle) {
        case Default:
        case Modally:
            [self transitionNavigationStyleToViewController:viewController transitionStyle:transitionStyle source:nil];
            break;
        case Popover:
            [self transitionNavigationStyleToViewController:viewController transitionStyle:transitionStyle source:self.view];
            break;
        default:
            break;
    }
}

- (void)transitionNavigationStyleToViewController:(UIViewController *)viewController transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source {
    
    switch (transitionStyle) {
        case Default:
        case Modally:
            [self presentViewController:[[UINavigationController alloc] initWithRootViewController:viewController] animated:YES completion:nil];
            break;
        case Popover:
            [self configureDefaultPopoverViewController:[[UINavigationController alloc] initWithRootViewController:viewController] source:source];
            break;
            
        default:
            break;
    }
}


- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs {
    [self transitionTabStyleToViewControllers:tabs transitionStyle:Default];
}


- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs transitionStyle:(TransitionStyle)transitionStyle {

    switch (transitionStyle) {
        case Default:
        case Modally:
            [self transitionTabStyleToViewControllers:tabs transitionStyle:transitionStyle source:nil];
            break;
        case Popover:
            [self transitionTabStyleToViewControllers:tabs transitionStyle:transitionStyle source:self.view];
            break;
        default:
            break;
    }
}

- (void)transitionTabStyleToViewControllers:(NSArray<UIViewController *> *)tabs transitionStyle:(TransitionStyle)transitionStyle source:(UIView *)source {
    switch (transitionStyle) {
        case Default:
        case Modally:
        {
            UITabBarController *tabBar = [UITabBarController new];
            tabBar.viewControllers = tabs;
            [self presentViewController:tabBar animated:YES completion:nil];
        }
            break;
        case Popover:
        {
            UITabBarController *tabBar = [UITabBarController new];
            tabBar.viewControllers = tabs;
            [self configureDefaultPopoverViewController:tabBar source:source];
        }
            break;
        default:
            break;
    }
}

#pragma mark - Private Method

- (void)configureDefaultPopoverViewController:(UIViewController *)viewController source:(UIView *)source {
    
    viewController.modalPresentationStyle = UIModalPresentationPopover; // 下記コードの前に書いてないと落ちる
    viewController.popoverPresentationController.sourceView = source;
    viewController.popoverPresentationController.sourceRect = source.bounds;
    viewController.popoverPresentationController.delegate = self;
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
