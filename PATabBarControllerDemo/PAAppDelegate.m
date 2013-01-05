//
//  PAAppDelegate.m
//  PATabBarControllerDemo
//
//  Created by Alex Pawlowski on 11/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PAAppDelegate.h"
#import "PAFirstViewController.h"
#import "PASecondViewController.h"

@implementation PAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
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
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.

}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end