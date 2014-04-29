//
//  KCLViewController.m
//  KCLSampleExtendedLayoutIncludesOpaqueBars
//
//  Created by kanta on 4/29/14.
//  Copyright (c) 2014 kclab. All rights reserved.
//

#import "KCLViewController.h"
#import "KCLTableViewController.h"

@interface KCLViewController () <UITableViewDataSource>
@property (nonatomic, strong) UITabBarController *tabBarController;
@end

@implementation KCLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    // TabBarが半透明だとTabBarの領域までTableViewの領域が入る。
    // /*
    self.tabBarController.tabBar.alpha = 0.5;
    self.tabBarController.tabBar.translucent = YES;
    self.tabBarController.tabBar.backgroundColor = [UIColor greenColor];
    // */
    
    // TabBarが不透明だとTableViewの領域はTabBarと被らない。
    /*
    self.tabBarController.tabBar.alpha = 1.0;
    self.tabBarController.tabBar.translucent = NO;
     */
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UITableViewController *tableViewController = [storyBoard instantiateViewControllerWithIdentifier:@"kTableViewController"];
    tableViewController.tableView.dataSource = self;
    tableViewController.extendedLayoutIncludesOpaqueBars = NO; // YES => TabBarが不透明でもTableViewの領域をTabBarの領域に潜らせる。
    
    [self.tabBarController setViewControllers:@[tableViewController]];
    [self.view addSubview:self.tabBarController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
