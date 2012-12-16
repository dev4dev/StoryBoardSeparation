//
//  AppDelegate.m
//  sbTest
//
//  Created by Alex Antonyuk on 12/15/12.
//  Copyright (c) 2012 Alex Antonyuk. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate()

- (BOOL)isLoooooongIPhone;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

	NSString* storyboardName = nil;
	if ([self isLoooooongIPhone]) {
		storyboardName = @"iPhone5";
	} else {
		storyboardName = @"iPhone";
	}
	UIStoryboard* sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];

	UIViewController* vc = (UIViewController*)[sb instantiateInitialViewController];
	self.window.rootViewController = vc;
	[self.window makeKeyAndVisible];

    return YES;
}

- (BOOL)
isLoooooongIPhone
{
	return ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone && CGRectGetHeight([UIScreen mainScreen].bounds) == 568.0);
}

@end
