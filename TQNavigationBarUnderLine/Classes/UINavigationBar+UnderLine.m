//
//  UINavigationBar+UnderLine.m
//  TQNavigationBarUnderLine
//
//  Created by qfu on 8/19/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "UINavigationBar+UnderLine.h"
#import <objc/runtime.h>

// before iOS 10 use _UINavigationBarBackground
#define UINavigationBarBackground @"_UINavigationBarBackground"
// after iOS 10 use _UIBarBackground
#define UIBarBackground @"_UIBarBackground"

#define ShadowView @"_shadowView"

@implementation UINavigationBar (UnderLine)
@dynamic overlay;

- (UIView *)overlay {
    return objc_getAssociatedObject(self, @selector(overlay));
}

- (void)setOverlay:(UIView *)overlay {
    objc_setAssociatedObject(self, @selector(overlay), overlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - public

- (void)ul_setUnderLineColor:(UIColor *)color {
    if (!self.overlay) {
        UIImageView *shadowView = nil;
        NSArray *navigationBarSubviews = [self subviews];
        for (UIView *view in navigationBarSubviews) {
            NSString *viewName = NSStringFromClass([view class]);
            if ([viewName isEqualToString:UINavigationBarBackground] ||
                [viewName isEqualToString:UIBarBackground]) {
                shadowView = [view valueForKey:ShadowView];
                if (shadowView == nil) {
                    return;
                }
                
                self.overlay = [[UIView alloc] initWithFrame:shadowView.frame];
                self.overlay.userInteractionEnabled = NO;
                self.overlay.translatesAutoresizingMaskIntoConstraints = NO;
                [view addSubview:self.overlay];
                [view addConstraints:[[self class] fillingConstraintsView:self.overlay superView:shadowView]];
                break;
            }
            
            if (shadowView) {
                break;
            }
        }
    }
    
    if (self.overlay) {
        self.overlay.backgroundColor = color;
    }
}

- (void)ul_reset {
    [self.overlay removeFromSuperview];
    self.overlay = nil;
}

#pragma mark - helper

+ (NSArray<__kindof NSLayoutConstraint *> *)fillingConstraintsView:(UIView *)view superView:(UIView *)superView {
    return @[
             [NSLayoutConstraint constraintWithItem:view
                                          attribute:NSLayoutAttributeTop
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:superView
                                          attribute:NSLayoutAttributeTop
                                         multiplier:1.0
                                           constant:0],
             [NSLayoutConstraint constraintWithItem:view
                                          attribute:NSLayoutAttributeBottom
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:superView
                                          attribute:NSLayoutAttributeBottom
                                         multiplier:1.0
                                           constant:0],
             [NSLayoutConstraint constraintWithItem:view
                                          attribute:NSLayoutAttributeLeft
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:superView
                                          attribute:NSLayoutAttributeLeft
                                         multiplier:1.0
                                           constant:0],
             [NSLayoutConstraint constraintWithItem:view
                                          attribute:NSLayoutAttributeRight
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:superView
                                          attribute:NSLayoutAttributeRight
                                         multiplier:1.0
                                           constant:0]
             ];
}

@end
