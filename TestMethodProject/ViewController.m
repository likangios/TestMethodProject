//
//  ViewController.m
//  TestMethodProject
//
//  Created by luck on 2018/6/7.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestView *h = [TestView rotationViewWithItem:@{@"key":@"value"}];
    h.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:h];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
