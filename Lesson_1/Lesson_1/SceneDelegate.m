//
//  SceneDelegate.m
//  Lesson_1
//
//  Created by Андрей Щекатунов on 13.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "SceneDelegate.h"
#import "MainViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:windowFrame];
    [self.window makeKeyAndVisible];
    
    MainViewController *mainController = [[MainViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mainController];
    navController.hidesBarsOnSwipe = YES;
    self.window.rootViewController = navController;
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    [self.window setWindowScene: windowScene];
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    
}


- (void)sceneWillResignActive:(UIScene *)scene {
    
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    
}


@end
