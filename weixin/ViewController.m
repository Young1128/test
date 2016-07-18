//
//  ViewController.m
//  weixin
//
//  Created by LiJinSuo on 16/6/20.
//  Copyright © 2016年 LiJinSuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(haha) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
-(void)haha{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://oauth2.tsign.cn/tgoauth2/authorize!login"]];
    
}


@end
