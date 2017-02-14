//
//  NaviShowViewController.m
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/14.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import "NaviShowViewController.h"
#import "UIViewController+Storyboard.h"
#import "ViewControllerInstanceProtocol.h"

@interface NaviShowViewController ()<ViewControllerInstanceProtocol>


@end

@implementation NaviShowViewController

+ (instancetype)selfViewController {
    return [self selfViewControllerWithStoryboardName:@"Main"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
