//
//  ViewController.m
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import "ViewController.h"

#import "NoneShowViewController.h"
#import "NoneModalViewController.h"
#import "NonePopoverViewController.h"

#import "NaviShowViewController.h"
#import "NaviModalViewController.h"
#import "NaviPopoverViewController.h"

#import "TabShowViewController.h"
#import "TabModalViewController.h"
#import "TabPopoverViewController.h"

#import "CTabShowViewController.h"
#import "CTabShowSecondViewController.h"

#import "UIViewController+Transition.h"

@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *nonePopoverButton;
@property (weak, nonatomic) IBOutlet UIButton *naviPopoverButton;
@property (weak, nonatomic) IBOutlet UIButton *tabPopoverButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)noneShow:(UIButton *)sender {
    [self showViewController:[NoneShowViewController selfViewController] sender:self];
}

- (IBAction)modalShow:(UIButton *)sender {
    [self presentViewController:[NoneModalViewController selfViewController] animated:YES completion:nil];
}

- (IBAction)popoverShow:(UIButton *)sender {
    [self transitionToViewController:[NonePopoverViewController selfViewController] transitionStyle:Popover source:self.nonePopoverButton];
}

- (IBAction)naviShow:(UIButton *)sender {
    [self transitionNavigationStyleToViewController:[NaviShowViewController selfViewController]];
}

- (IBAction)naviModal:(UIButton *)sender {
    [self transitionNavigationStyleToViewController:[NaviModalViewController selfViewController] transitionStyle:Modally];
}

- (IBAction)naviPopover:(UIButton *)sender {
    [self transitionNavigationStyleToViewController:[NaviPopoverViewController selfViewController]
                                    transitionStyle:Popover
                                             source:self.naviPopoverButton];
}

- (IBAction)tabShow:(UIButton *)sender {
    CTabShowViewController *cTabShow = [CTabShowViewController selfViewController];
    CTabShowSecondViewController *cTabShowSecond = [CTabShowSecondViewController selfViewController];
    [cTabShow initialize];
    [cTabShowSecond initialize];
    [self transitionTabStyleToViewControllers:@[cTabShow, cTabShowSecond]];
}

- (IBAction)tabModal:(UIButton *)sender {
    CTabShowViewController *cTabShow = [CTabShowViewController selfViewController];
    CTabShowSecondViewController *cTabShowSecond = [CTabShowSecondViewController selfViewController];
    [cTabShow initialize];
    [cTabShowSecond initialize];
    [self transitionTabStyleToViewControllers:@[cTabShow, cTabShowSecond] transitionStyle:Modally];
}


- (IBAction)tabPopover:(UIButton *)sender {
    CTabShowViewController *cTabShow = [CTabShowViewController selfViewController];
    CTabShowSecondViewController *cTabShowSecond = [CTabShowSecondViewController selfViewController];
    [cTabShow initialize];
    [cTabShowSecond initialize];
    [self transitionTabStyleToViewControllers:@[cTabShow, cTabShowSecond] transitionStyle:Popover source:self.tabPopoverButton];
}










@end
