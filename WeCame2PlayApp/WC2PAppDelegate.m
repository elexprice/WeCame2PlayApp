//
//  WC2PAppDelegate.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/7/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PAppDelegate.h"
#import "WC2PHomeViewController.h"
#import "WC2PDJsViewController.h"
#import "WC2PAboutViewController.h"
#import "WC2PEventsViewController.h"
#import "WC2PVideoViewController.h"
#import "WC2PStoreViewController.h"
#import "WC2PContactViewController.h"
#import "WC2PPhotosTableViewController.h"


@implementation WC2PAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    // Create a tab bar
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
   
    // Create view controllers
    WC2PHomeViewController *homeViewController = [[WC2PHomeViewController alloc]init];
    WC2PDJsViewController *djViewController = [[WC2PDJsViewController alloc]init];
    WC2PAboutViewController *aboutViewController = [[WC2PAboutViewController alloc]init];
    WC2PEventsViewController *eventsViewController = [[WC2PEventsViewController alloc]init];
    WC2PVideoViewController *videoViewController = [[WC2PVideoViewController alloc]init];
    WC2PStoreViewController *StoreViewController = [[WC2PStoreViewController alloc]init];
    WC2PContactViewController *contactViewController = [[WC2PContactViewController alloc]init];
    WC2PPhotosTableViewController *photosViewController = [[WC2PPhotosTableViewController alloc]init];
   
    // Create navigation controllers
    UINavigationController *djNavController = [[UINavigationController alloc] initWithRootViewController:djViewController];
    UINavigationController *eventNavController = [[UINavigationController alloc] initWithRootViewController:eventsViewController];
    UINavigationController *videoNavController = [[UINavigationController alloc] initWithRootViewController:videoViewController];
    UINavigationController *storeNavController = [[UINavigationController alloc] initWithRootViewController:StoreViewController];
    UINavigationController *photosNavController = [[UINavigationController alloc] initWithRootViewController:photosViewController];
    UINavigationController *homeNavController = [[UINavigationController alloc]initWithRootViewController:homeViewController];
    
    
    // set navigation controler tab bar title
    djNavController.tabBarItem.title = @"DJs";
    aboutViewController.tabBarItem.title = @"About";
    eventNavController.tabBarItem.title = @"Events";
    videoNavController.tabBarItem.title = @"Videos";
    storeNavController.tabBarItem.title = @"Store";
    contactViewController.tabBarItem.title = @"Contact Us";
    photosNavController.tabBarItem.title = @"Photos";
    homeNavController.tabBarItem.title = @"Home";
    
    // set navigation controler tab bar image
    homeViewController.tabBarItem.image = [UIImage imageNamed:@"Home.png"];
    djNavController.tabBarItem.image = [UIImage imageNamed:@"dj.png"];
    aboutViewController.tabBarItem.image = [UIImage imageNamed:@"About.png"];
    eventNavController.tabBarItem.image = [UIImage imageNamed:@"Events.png"];
    videoNavController.tabBarItem.image = [UIImage imageNamed:@"Videos.png"];
    storeNavController.tabBarItem.image = [UIImage imageNamed:@"Store.png"];
    photosNavController.tabBarItem.image = [UIImage imageNamed:@"Photos.png"];
    contactViewController.tabBarItem.image = [UIImage imageNamed:@"Contact Us.png"];
    
    
    djNavController.navigationBar.hidden = YES;
    homeNavController.navigationBar.hidden = YES;
   
    
    // Add view controllers to tab bar
    tabBarController.viewControllers = @[homeNavController, aboutViewController, djNavController, eventNavController, videoNavController, storeNavController, contactViewController, photosNavController ];
    
    
    // set tab bar as root view controller of app
    self.window.rootViewController = tabBarController;
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
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

@end
