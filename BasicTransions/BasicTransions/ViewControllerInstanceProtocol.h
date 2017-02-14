//
//  ViewControllerInstanceProtocol.h
//  CustomTransitions
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 nsawada. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerInstanceProtocol <NSObject>

@required
+ (instancetype)selfViewController;


@end
