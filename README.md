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
    
License
=======

Distributed under the terms of MIT License

    Copyright (C) 2013 Alex Pawlowski

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
    and associated documentation files (the "Software"), to deal in the Software without restriction, 
    including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
    and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions 
    of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
    TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
    DEALINGS IN THE SOFTWARE.
