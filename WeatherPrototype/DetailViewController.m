//
//  DetailViewController.m
//  WeatherPrototype
//
//  Created by Marco Lau on 13/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "DetailViewController.h"
#import "BoxViewController.h"

@interface DetailViewController ()
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contentScrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    [self.view setBackgroundColor:[UIColor clearColor]];
    self.contentScrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 3);
    self.contentScrollView.bounces = NO;
    [self.view addSubview:self.contentScrollView];
//    [self addContentSections];
    
    self.contentScrollView.delegate = self;
    
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addContentSections {
    BoxViewController *boxView = [[BoxViewController alloc] init];
    
    for (NSDictionary *record in _dataDictionary) {
    
        [boxView setBoxTitle: @"title"];
        [boxView setBoxDesc: @"description"];
    
        [self.contentScrollView addSubview:boxView.view];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"Offset = %.2f", self.contentScrollView.contentOffset.y);
}

@end
