//
//  AppDelegate.m
//  TouchPainter
//
//  Created by 陈冰 on 2017/12/30.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

#import "AppDelegate.h"
#import "CoordinatingController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    CoordinatingController *coordinationCtrl = [CoordinatingController sharedInstance];
    self.window.rootViewController = coordinationCtrl.activeViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
