//
//  SearchResultViewController.h
//  Life Assistant 0.4
//
//  Created by Holmes Wu on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchResultViewController : UIViewController<UITableViewDataSource>

@property (strong,nonatomic) NSArray *storeData;

@end
