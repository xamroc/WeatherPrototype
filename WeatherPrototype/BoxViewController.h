//
//  BoxViewController.h
//  WeatherPrototype
//
//  Created by Marco Lau on 16/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoxViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *boxView;
@property (strong, nonatomic) NSString *boxTitle;
@property (strong, nonatomic) NSString *boxDesc;

@end
