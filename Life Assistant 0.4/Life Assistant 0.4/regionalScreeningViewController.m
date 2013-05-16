//
//  regionalScreeningViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "regionalScreeningViewController.h"

@interface regionalScreeningViewController ()


@end

@implementation regionalScreeningViewController

@synthesize regional;

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
    self.regional=[[NSArray alloc]
                   initWithObjects:@"周围区域", @"北京商圈",@"上海商圈",@"杭州商圈",nil];
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
            return [self.regional count];
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
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"regionalCell"];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text=[self.regional objectAtIndex:indexPath.row];
            break;
            
        default:
            cell.textLabel.text=@"unkown";
            break;
    }
    return cell;
}


@end
