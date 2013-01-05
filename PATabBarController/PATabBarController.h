//
//  PATabBarController.h
//  PATabBarController
//
//  Created by Alex Pawlowski on 11/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

@interface PATabBarController : UIViewController

@property (nonatomic, strong, readonly) UISegmentedControl *segmentedControl;
@property (nonatomic, copy) NSArray *viewControllers;
@property (nonatomic, weak) UIViewController *selectedViewController;
@property (nonatomic, assign) NSUInteger selectedViewControllerIndex;
@property (nonatomic, assign) CGFloat defaultWidth;

- (id)initWithViewControllers:(NSArray *)viewControllers;

- (void)addViewController:(UIViewController *)viewController;
- (void)addViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)insertViewController:(UIViewController *)viewController atIndex:(NSUInteger)index animated:(BOOL)animated;
- (void)insertViewController:(UIViewController *)viewController atIndex:(NSUInteger)index;
- (void)removeViewControllerAtIndex:(NSUInteger)index;
- (void)removeViewControllerAtIndex:(NSUInteger)index animated:(BOOL)animated;
- (void)removeViewController:(UIViewController *)viewController;
- (void)removeViewController:(UIViewController *)viewController animated:(BOOL)animated;

- (void)setSelectedViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)setSelectedViewControllerIndex:(NSUInteger)index animated:(BOOL)animated;

@end
