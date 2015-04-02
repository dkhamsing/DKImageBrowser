//
//  DKAppDelegate.m
//  Demo
//
//  Created by dkhamsing on 3/20/14.
//
//

#import "DKAppDelegate.h"
#import "DKViewController.h"


@implementation DKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    DKViewController *viewController = [[DKViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
