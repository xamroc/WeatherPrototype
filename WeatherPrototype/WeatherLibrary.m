//
//  WeatherLibrary.m
//  WeatherPrototype
//
//  Created by Marco Lau on 13/10/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "WeatherLibrary.h"

NSString *const kTitle = @"title";
NSString *const kDescription = @"desc";
NSString *const kBackgroundImage = @"backgroundImage";
NSString *const kSectionTitle = @"sectionTitle";
NSString *const kSectionDescription = @"sectionDesc";

@implementation WeatherLibrary
- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.library = @[@{kTitle: @"Title1",
                           kDescription: @"Title 1 Description",
                           kBackgroundImage: @"photo1.png",
                           kSectionTitle: @"section1",
                           kSectionDescription: @"sectionDesc1"
                           },
                         @{kTitle: @"Title2",
                           kDescription: @"Title 2 Description",
                           kBackgroundImage: @"photo2.png",
                           kSectionTitle: @"section2",
                           kSectionDescription: @"sectionDesc2"
                           },
                         @{kTitle: @"Title3",
                           kDescription: @"Title 3 Description",
                           kBackgroundImage: @"photo3.png",
                           kSectionTitle: @"section3",
                           kSectionDescription: @"sectionDesc3"
                           },
                         @{kTitle: @"Title4",
                           kDescription: @"Title 4 Description",
                           kBackgroundImage: @"photo4.png",
                           kSectionTitle: @"section4",
                           kSectionDescription: @"sectionDesc4"
                           },
                         @{kTitle: @"Title5",
                           kDescription: @"Title 5 Description",
                           kBackgroundImage: @"photo5.png",
                           kSectionTitle: @"section5",
                           kSectionDescription: @"sectionDesc5"
                           }
                        ];
                                    
    }
    return self;
}

@end
