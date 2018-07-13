//
//  TQViewController.m
//  TQNavigationBarUnderLine
//
//  Created by 443054369@qq.com on 07/13/2018.
//  Copyright (c) 2018 443054369@qq.com. All rights reserved.
//

#import "TQViewController.h"
@import TQNavigationBarUnderLine;

@interface TQViewController ()

@end

@implementation TQViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed: 0.9118 green: 0.9118 blue: 0.9118 alpha: 1.0]];
    [self.navigationController.navigationBar ul_setUnderLineColor:[UIColor redColor]];
}

@end
