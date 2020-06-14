//
//  SceneDelegate.m
//  Strings
//
//  Created by Alexey Baryshnikov on 23.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    NSString *text = @"The free function causes the space pointed to by ptr to be deallocated, that is, made available for further allocation. If ptr is a null pointer, no action occurs. Otherwise, if the argument does not match a pointer earlier returned by the calloc, malloc, or realloc function, or if the space has been deallocated by a call to free or realloc, the behavior is undefined.";
    /*
    NSRange range = [text rangeOfString:@"calloc, malloc, or realloc function," options:NSCaseInsensitiveSearch];
    
    if (range.location != NSNotFound) {
        NSLog(@"%@", [text substringToIndex:range.location]);
    } else {
        NSLog(@"string range not found");
    }*/
    
    /*
    NSRange searchRange = NSMakeRange(0, [text length]);
    NSInteger counter = 0;
    
    while (TRUE) {
        NSRange range = [text rangeOfString:@"or" options:NSCaseInsensitiveSearch range:searchRange];
        
        if (range.location != NSNotFound) {
            counter += 1;
            NSInteger index = range.location + range.length;
            searchRange.location = index;
            searchRange.length = text.length - index;
            
            NSLog(@"%@", NSStringFromRange(range));
            
        } else {
            NSLog(@"search complited");
            break;
        }
    }
    NSLog(@"found %ld", counter);
     */
    
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@"\n"];
    text = [text stringByReplacingOccurrencesOfString:@"," withString:@""];
    text = [text uppercaseString];
    NSLog(@"%@", text);
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
