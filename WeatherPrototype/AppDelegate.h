//
//  AppDelegate.h
//  WeatherPrototype
//
//  Created by Marco Lau on 13/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InitViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) InitViewController *ivc;
@property (nonatomic, strong) ECSlidingViewController *slidingViewController;

@end

