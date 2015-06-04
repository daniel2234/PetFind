//
//  AppDelegate.m
//  PetFind
//
//  Created by Daniel Kwiatkowski on 2015-06-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "Pet.h"

@interface AppDelegate ()

@end

@implementation AppDelegate{
    NSArray* _pets;
}

-(NSArray*)pets{
    return _pets;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    _pets = @[
              [Pet petWithImage:@"Bo" title:@"This is Bo, help me find him" attribution:@"Details"],
              [Pet petWithImage:@"BorderCollie.jpg" title:@"Lost Him" attribution:@"Details"],
              [Pet petWithImage:@"CuteKitten.jpg" title:@"Giving away" attribution:@"Details"],
              [Pet petWithImage:@"DancingCat.jpg" title:@"Want him" attribution:@"Details"],
              [Pet petWithImage:@"FluffyKitten.jpg" title:@"Lost Her" attribution:@"Details"],
              [Pet petWithImage:@"ItalianGreyhound.jpg" title:@"Want Him" attribution:@"Details"],
              [Pet petWithImage:@"JRT.jpg" title:@"Want him" attribution:@"Details"],
              [Pet petWithImage:@"KittensInABasket.jpg" title:@"Want him" attribution:@"Details"],
              [Pet petWithImage:@"RelaxedCat.jpg" title:@"Want him" attribution:@"Details"],
              [Pet petWithImage:@"St.Bernard.jpg" title:@"Want him" attribution:@"Details"],
              [Pet petWithImage:@"VeryYoungKitten.jpg" title:@"Want Her" attribution:@"Details"],
              ];
    
    // style navigation bar
    UIColor* navColor = [UIColor colorWithRed:0.68f green:0.37f blue:0.38f alpha:1.0f];
    [[UINavigationBar appearance]setBarTintColor:navColor];
    [[UINavigationBar appearance]setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    //make the status bar white
    [UIApplication sharedApplication].statusBarStyle= UIStatusBarStyleLightContent;
    
    return YES;
    
}


@end
