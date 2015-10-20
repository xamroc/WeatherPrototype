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
    self.contentScrollView.contentSize = CGSizeMake(self.contentScrollView.frame.size.width, self.contentScrollView.frame.size.height * 3);
    self.contentScrollView.bounces = NO;
    [self.view addSubview:self.contentScrollView];
    [self addContentSections];
    
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
//    NSString *imageName = record[@"backgroundImage"];
    
    for (NSDictionary *record in _dataDictionary) {
        NSString *sectionTitle = record[@"sectionTitle"];
        NSString *sectionDesc = record[@"sectionDesc"];
    
        [boxView setBoxTitle: @"title"];
        [boxView setBoxDesc: @"description"];
    
        [self.contentScrollView addSubview:boxView.view];
    }
    
    
//    for (uint i = 0; i < [self.dataDictionary count]; i++) {
//        UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, self.contentScrollView.frame.origin.y / 8 * i, 300, 400)];
//        titleLabel.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.2f];
//        titleLabel.text = [self.dataDictionary[i] objectForKey:(@"title")];
//        titleLabel.textColor = [UIColor whiteColor];
//        [self.contentScrollView addSubview:titleLabel];
//    }
}
//
//-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
//    [scrollView setContentOffset:scrollView.contentOffset animated:YES];
//}

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
    NSLog(@"%s", @"helllo scroll");
    NSLog(@"Offset = %.2f", self.contentScrollView.contentOffset.y);
}

@end
