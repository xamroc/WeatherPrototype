//
//  HomeViewController.m
//  WeatherPrototype
//
//  Created by Marco Lau on 16/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"
#import "WeatherLibrary.h"

@interface HomeViewController ()
@property (nonatomic, strong) NSMutableArray *detailViewControllers;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailViewControllers = [[NSMutableArray alloc] init];
    NSArray *library = [[WeatherLibrary alloc] init].library;
    
    self.pagedScrollView.pagingEnabled = YES;
    self.pagedScrollView.bounces = NO;
    self.pagedScrollView.contentSize = CGSizeMake(self.pagedScrollView.frame.size.width * [library count], self.pagedScrollView.frame.size.height);
    [self buildBackground:library];
    
    self.pagedScrollView.delegate = self;
    
    for (uint i = 0; i < [library count]; i++) {
        DetailViewController *detailViewController = [[DetailViewController alloc] init];
        [detailViewController setDataDictionary: library];
        detailViewController.view.frame = CGRectMake(self.pagedScrollView.frame.size.width * i, 0.0, detailViewController.view.frame.size.width, detailViewController.view.frame.size.height);
        [self.detailViewControllers addObject:detailViewController];
        [self.pagedScrollView addSubview:detailViewController.view];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray*)getImageNames:(NSArray*) library {
    NSMutableArray *imageNames = [[NSMutableArray alloc] init];
    for(NSDictionary* record in library) {
        NSString *imageName = record[@"backgroundImage"];
        [imageNames addObject:imageName];
    }
    return imageNames;
}

- (void)buildBackground:(NSArray*) library {
    NSArray *backgroundImageNames = [self getImageNames:library];
    
    for(uint i = 0; i < [backgroundImageNames count]; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:backgroundImageNames[i]]];
        imageView.frame = CGRectMake(self.pagedScrollView.frame.size.width * i, 0.0, self.pagedScrollView.frame.size.width, self.pagedScrollView.frame.size.height);
        [self.pagedScrollView addSubview:imageView];
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

- (double)getContentOffsetForViewAtIndex:(uint)index {
    NSLog(@"index = %d", index);
    return [[self.detailViewControllers[index] contentScrollView] contentOffset].y;
}

#pragma UIScrollViewDelegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    uint totalPages = self.pagedScrollView.contentSize.width / self.pagedScrollView.frame.size.width;
    NSLog(@"total pages = %d", totalPages);
    uint currentPageIndex = self.pagedScrollView.contentOffset.x / (self.pagedScrollView.contentSize.width / totalPages);
    NSLog(@"page = %d", currentPageIndex);
    NSLog(@"Offset x = %.2f", self.pagedScrollView.contentOffset.x);
    NSLog(@"Offset = %f, %f", self.pagedScrollView.contentOffset.x, self.pagedScrollView.contentOffset.y);
    NSLog(@"width    = %.2f", self.pagedScrollView.contentSize.width);
    NSLog(@"Offset y = %.2f", [self getContentOffsetForViewAtIndex:currentPageIndex]);
    
    for (DetailViewController *detailViewController in self.detailViewControllers) {
        detailViewController.contentScrollView.contentOffset = CGPointMake(0.f, [self getContentOffsetForViewAtIndex:currentPageIndex]);
    }
}

@end
