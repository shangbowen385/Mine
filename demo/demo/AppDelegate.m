//
//  AppDelegate.m
//  demo
//
//  Created by 尚博文 on 15/11/23.
//  Copyright © 2015年 尚博文. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _window.backgroundColor = [UIColor whiteColor];
    
    [_window makeKeyAndVisible];
    
    LeftViewController * left = [[LeftViewController alloc] init];
    
    RightViewController * right = [[RightViewController alloc] init];
    
    ViewController * root = [[ViewController alloc] init];
    root.title = @"Root";
    UINavigationController * rootNav = [[UINavigationController alloc] initWithRootViewController:root];
    
    _window.rootViewController = [[RESideMenu alloc] initWithContentViewController:rootNav leftMenuViewController:left rightMenuViewController:right];
    
    return YES;
    
}

@end
