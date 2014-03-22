//
//  AppDelegate.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "AppDelegate.h"

#import "Heart1.h"
#import "Heart2.h"
#import "Heart3.h"
#import "Heart4.h"
#import "Heart5.h"
#import "Heart6.h"
#import "Heart7.h"
#import "Heart8.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
		
	id h1_1 = [Heart1 sharedInstance];
	id h1_2 = [Heart1 sharedInstance]; // same h1_1
	id h1_3 = [[Heart1 alloc] init]; // not same h1_1!

	id h2_1 = [Heart2 sharedInstance];
	id h2_2 = [Heart2 sharedInstance]; // same h2_1
	id h2_3 = [[Heart2 alloc] init]; // not same h2_1!

	id h3_1 = [Heart3 sharedInstance];
	id h3_2 = [Heart3 sharedInstance]; // same h3_1
	id h3_3 = [[Heart3 alloc] init]; // not same h3_1!

	id h4_1 = [Heart4 sharedInstance];
	id h4_2 = [Heart4 sharedInstance]; // same h4_1
	id h4_3 = [[Heart4 alloc] init]; // not same h4_1!

	id h5_1 = [Heart5 sharedInstance];
	id h5_2 = [Heart5 sharedInstance]; // same h5_1
	id h5_3 = [[Heart5 alloc] init]; // not same h5_1!

	id h6_1 = [Heart6 sharedInstance];
	id h6_2 = [Heart6 sharedInstance]; // same h6_1
	id h6_3 = [[Heart6 alloc] init]; // nil!
	id h6_4 = [h6_1 copy]; // same h6_1

	id h7_1 = [Heart7 sharedInstance];
	id h7_2 = [Heart7 sharedInstance]; // same h7_1
	id h7_3 = [[Heart7 alloc] init]; // nil!
	id h7_4 = [h7_1 copy]; // same h7_1

	id h8_1 = [Heart8 sharedInstance];
	id h8_2 = [Heart8 sharedInstance]; // same h8_1
	id h8_3 = [[Heart8 alloc] init]; // nil!

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
