//
//  TQAppDelegate.m
//  TQNavigationBarUnderLine
//
//  Created by 443054369@qq.com on 07/13/2018.
//  Copyright (c) 2018 443054369@qq.com. All rights reserved.
//

#import "TQAppDelegate.h"
#import "TQViewController.h"

@implementation TQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    TQViewController *viewController = [[TQViewController alloc] init];
    viewController.title = @"Home";
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
