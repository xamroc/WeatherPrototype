//
//  BoxViewController.m
//  WeatherPrototype
//
//  Created by Marco Lau on 16/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "BoxViewController.h"

@interface BoxViewController ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descriptionLabel;

@end

@implementation BoxViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *const blackBackground = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:.5];
    UIColor *const whiteColor = [UIColor whiteColor];
    
//    self.view.bounds = CGRectInset(self.view.frame, 10.0f, 10.0f);
    
    for(uint i = 0; i < 6; i++) {
    
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(1.0f, 1.0f + 110 * i, self.view.frame.size.width, 30.f)];
        self.titleLabel.text = self.boxTitle;
    	self.titleLabel.textColor = whiteColor;
        self.titleLabel.backgroundColor = blackBackground;
        
    
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(1.0f, 30.0f + 110 * i, self.view.frame.size.width, 30.f)];
        self.descriptionLabel.text = self.boxDesc;
        self.descriptionLabel.textColor = whiteColor;
        self.descriptionLabel.backgroundColor = blackBackground;
    
        [self.view addSubview:self.titleLabel];
        [self.view addSubview:self.descriptionLabel];
    }
    
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
