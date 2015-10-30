//
//  HomeViewController.h
//  WeatherPrototype
//
//  Created by Marco Lau on 16/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *pagedScrollView;
@property (weak, nonatomic) IBOutlet UIView *revealMenuView;
@end
