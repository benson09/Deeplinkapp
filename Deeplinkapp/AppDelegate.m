//
//  AppDelegate.m
//  Deeplinkapp
//
//  Created by Jared McFarland on 4/29/15.
//  Copyright (c) 2015 Jared McFarland. All rights reserved.
//

#import "AppDelegate.h"
#import "Page1ViewController.h"
#import "Page2ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    if([[url host] isEqualToString:@"deeplink"]) {
        if([[url path] isEqualToString:@"/page1"]) {
            self.window.rootViewController = [[Page1ViewController alloc] init];
        } else if ([[url path] isEqualToString:@"/page2"]) {
            self.window.rootViewController = [[Page2ViewController alloc] init];
        } else {
            return NO;
        }
    } else {
        return NO;
    }
    return YES;
}

@end
