//
//  ViewController.m
//  TQNavigationBarUnderLine
//
//  Created by qfu on 8/19/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationBar+UnderLine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithRed: 0.9118 green: 0.9118 blue: 0.9118 alpha: 1.0]];
    [self.navigationController.navigationBar ul_setUnderLineColor:[UIColor redColor]];
}

@end
