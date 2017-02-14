//
//  CTabShowSecondViewController.m
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import "CTabShowSecondViewController.h"
#import "UIViewController+Storyboard.h"
#import "ViewControllerInstanceProtocol.h"

@interface CTabShowSecondViewController ()<ViewControllerInstanceProtocol>


@end

@implementation CTabShowSecondViewController

+ (instancetype)selfViewController {
    return [self selfViewControllerWithStoryboardName:@"Main"];
}

- (void)initialize {
    self.tabBarItem.title = @"cTabSecond";
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
