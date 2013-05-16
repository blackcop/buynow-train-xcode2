//
//  SearchResultViewController.m
//  Life Assistant 0.4
//
//  Created by Holmes Wu on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "SearchResultViewController.h"

@interface SearchResultViewController ()

@end

@implementation SearchResultViewController

@synthesize storeData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    //self.storeData=[[NSArray alloc]
          //          initWithObjects:@"日本料理", @"中华料理",@"酒吧",nil];
    [self createStoreFactory ];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return [self.storeData count];
            break;
            
        default:
            return 0;
            break;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return nil;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"storeCell"];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text= [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"name"];
            break;
            
        default:
            cell.textLabel.text=@"unkown";
            break;
    }
    return cell;
}

- (void)createStoreFactory
{
    
    NSMutableArray *storeMutableArray;
    
    storeMutableArray = [[NSMutableArray alloc] init];
    
    [storeMutableArray addObject:
        [[NSDictionary alloc]
         initWithObjectsAndKeys:
         @"日本料理",@"category",
         @"小豆面馆",@"name",
         @"￥82",@"price",
         @"u9_normal.png",@"picture",
         @"卡 烟 日语 发票 包间 WIFI",@"facility",
         @"地址：朝阳区西坝河光熙门北里34号楼",@"address",
         @"优惠：会员特享，全场88折",@"coupon",
         @"64238422",@"telephone",
         
         
         
         nil

        ]
    ];
    
    self.storeData = [[NSArray alloc] initWithObjects:storeMutableArray, nil];
    
    
    
    
    
}





@end
