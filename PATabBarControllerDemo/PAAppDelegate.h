//
//  PAAppDelegate.h
//  PATabBarControllerDemo
//
//  Created by Alex Pawlowski on 11/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PATabBarController.h"

@interface PAAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navController;
@property (strong, nonatomic) PATabBarController *tabBarController;

@end