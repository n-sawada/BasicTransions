//
//  CTabShowViewController.m
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import "CTabShowViewController.h"
#import "UIViewController+Storyboard.h"
#import "ViewControllerInstanceProtocol.h"

@interface CTabShowViewController ()<ViewControllerInstanceProtocol>


@end

@implementation CTabShowViewController

+ (instancetype)selfViewController {
    return [self selfViewControllerWithStoryboardName:@"Main"];
}

- (void)initialize {
    self.tabBarItem.title = @"cTab";
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
