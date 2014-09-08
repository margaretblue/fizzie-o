//
//  AppDelegate.m
//  fizzie-o
//
//  Created by MARGARET MORRIS on 9/7/14.
//  Copyright (c) 2014 Margaret Blue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL)isBuzzed:(NSInteger)number{
    if(number %3 == 0){
    return YES;
        // ???how do you "check to see if the number contains the character 3" ?? whats a character?
        //} else {
    } else {
    return NO;
    }
}

-(BOOL)isFizzed:(NSInteger)number{
    if(number %5 == 0) {
        return YES;
    } else {
        return NO;
    }
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //In your didFinishLaunching method loop through numbers 1-100
    int i=1;
    for (i = 1; i<100; i++){
        BOOL fizzed = [self isFizzed:(NSInteger)i];
        BOOL buzzed = [self isBuzzed:(NSInteger)i];
        // http://stackoverflow.com/questions/17965328/how-do-i-print-out-bool-values-with-words?lq=1
        if(fizzed == YES && buzzed == NO){
            NSLog(@"%d - Fizz", i);
        } else if (fizzed == NO && buzzed == YES){
            NSLog(@"%d - Buzz", i);
        } else if (fizzed == YES && buzzed == YES){
            NSLog(@"%d - FizzBuzz", i);
        } else {
            NSLog(@"%d", i);
        }
    };
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
