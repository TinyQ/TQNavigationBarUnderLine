//
//  UINavigationBar+UnderLine.h
//  TQNavigationBarUnderLine
//
//  Created by qfu on 8/19/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (UnderLine)

/**
 add under line view in UINavigationBar`s ShadowView with color background.

 @param color line background color.
 */
- (void)ul_setUnderLineColor:(UIColor *)color;

/**
 remove under line view.
 */
- (void)ul_reset;

@end
