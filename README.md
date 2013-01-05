PATabBarController
==================

Simple container UIViewController that allows to present multiple view controllers when embedded in UINavigationController through the UISegmentedControl in the UINavigationItem

It tracks self.title and self.tabBarItem.image properties in contained controllers to update presentation in UISegmentedControl.


Also there are methods for adding/removing viewcontroller (not really useful in real life) and animatable methods for selecting current index.

Screenshot
==========

![PATabBarController screenshot](https://github.com/pawlowskialex/PATabBarController/raw/master/screenshot.png)

Usage
=====

Usage is straightforward and displayed in the included demo

Basically it goes like this:

    UIViewController *viewController1, *viewController2;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        viewController1 = [[PAFirstViewController alloc] initWithNibName:@"PAFirstViewController_iPhone" bundle:nil];
        viewController2 = [[PASecondViewController alloc] initWithNibName:@"PASecondViewController_iPhone" bundle:nil];
    } else {
        viewController1 = [[PAFirstViewController alloc] initWithNibName:@"PAFirstViewController_iPad" bundle:nil];
        viewController2 = [[PASecondViewController alloc] initWithNibName:@"PASecondViewController_iPad" bundle:nil];
    }
    self.tabBarController = [[PATabBarController alloc] init];

    self.tabBarController.viewControllers = @[viewController1, viewController2];
    self.tabBarController.defaultWidth = 150.0f;

    self.navController = [[UINavigationController alloc] initWithRootViewController:self.tabBarController];

    self.window.rootViewController = self.navController;
