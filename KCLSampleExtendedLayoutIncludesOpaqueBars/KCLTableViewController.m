//
//  KCLTableViewController.m
//  KCLSampleExtendedLayoutIncludesOpaqueBars
//
//  Created by kanta on 4/29/14.
//  Copyright (c) 2014 kclab. All rights reserved.
//

#import "KCLTableViewController.h"

@interface KCLTableViewController ()

@end

@implementation KCLTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%s, %@", __func__, NSStringFromCGRect(self.tableView.frame));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s, %@", __func__, NSStringFromCGRect(self.tableView.frame));
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"%s, %@", __func__, NSStringFromCGRect(self.tableView.frame));
}

@end
