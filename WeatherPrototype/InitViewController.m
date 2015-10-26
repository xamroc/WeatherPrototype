//
//  InitViewController.m
//  WeatherPrototype
//
//  Created by Marco Lau on 23/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "InitViewController.h"

@interface InitViewController ()

@end

@implementation InitViewController

- (void)viewDidLoad {
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
    self.underLeftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
