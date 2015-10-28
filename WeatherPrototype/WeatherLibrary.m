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
NSArray *const kBoxes = @"boxes";
NSString *const kBoxTitle = @"boxTitle";
NSString *const kBoxDesc = @"boxDesc";

@implementation WeatherLibrary
- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.library = @[@{kTitle: @"Title1",
                           kDescription: @"Title 1 Description",
                           kBackgroundImage: @"photo1.png",
                           kBoxes: @[@{kBoxTitle: @"BoxTitle1",
                                       kBoxDesc: @"BoxDesc1"
                                       },
                                     @{kBoxTitle: @"BoxTitle2",
                                       kBoxDesc: @"BoxDesc2"
                                       },
                                     @{kBoxTitle: @"BoxTitle3",
                                       kBoxDesc: @"BoxDesc3"
                                       }
                                     ]
                           },
                         @{kTitle: @"Title2",
                           kDescription: @"Title 2 Description",
                           kBackgroundImage: @"photo2.png",
                           kBoxes: @[@{kBoxTitle: @"BoxTitle1",
                                       kBoxDesc: @"BoxDesc1"
                                       },
                                     @{kBoxTitle: @"BoxTitle2",
                                       kBoxDesc: @"BoxDesc2"
                                       },
                                     @{kBoxTitle: @"BoxTitle3",
                                       kBoxDesc: @"BoxDesc3"
                                       }
                                     ]
                           },
                         @{kTitle: @"Title3",
                           kDescription: @"Title 3 Description",
                           kBackgroundImage: @"photo3.png",
                           kBoxes: @[@{kBoxTitle: @"BoxTitle1",
                                       kBoxDesc: @"BoxDesc1"
                                       },
                                     @{kBoxTitle: @"BoxTitle2",
                                       kBoxDesc: @"BoxDesc2"
                                       },
                                     @{kBoxTitle: @"BoxTitle3",
                                       kBoxDesc: @"BoxDesc3"
                                       }
                                     ]
                           },
                         @{kTitle: @"Title4",
                           kDescription: @"Title 4 Description",
                           kBackgroundImage: @"photo4.png",
                           kBoxes: @[@{kBoxTitle: @"BoxTitle1",
                                       kBoxDesc: @"BoxDesc1"
                                       },
                                     @{kBoxTitle: @"BoxTitle2",
                                       kBoxDesc: @"BoxDesc2"
                                       },
                                     @{kBoxTitle: @"BoxTitle3",
                                       kBoxDesc: @"BoxDesc3"
                                       }
                                     ]
                           },
                         @{kTitle: @"Title5",
                           kDescription: @"Title 5 Description",
                           kBackgroundImage: @"photo5.png",
                           kBoxes: @[@{kBoxTitle: @"BoxTitle1",
                                       kBoxDesc: @"BoxDesc1"
                                       },
                                     @{kBoxTitle: @"BoxTitle2",
                                       kBoxDesc: @"BoxDesc2"
                                       },
                                     @{kBoxTitle: @"BoxTitle3",
                                       kBoxDesc: @"BoxDesc3"
                                       }
                                     ]
                           }
                        ];
                                    
    }
    return self;
}

@end
