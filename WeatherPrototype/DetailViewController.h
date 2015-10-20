//
//  DetailViewController.h
//  WeatherPrototype
//
//  Created by Marco Lau on 13/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *contentScrollView;
@property (strong, nonatomic) NSArray *dataDictionary;
@end
