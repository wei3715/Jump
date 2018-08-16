//
//  ViewController.m
//  ZWWApp
//
//  Created by mac on 2018/6/6.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

//url scheme
//LSApplicationQueriesSchemes ios9之后，应用之间跳转需要加入白名单
//跳转到微信App
- (IBAction)toWeiXin:(id)sender {
    NSURL *url = [NSURL URLWithString:@"weixin://"];
    if ([[UIApplication sharedApplication]canOpenURL:url]) {
        [[UIApplication sharedApplication]openURL:url];
    }
    
}

- (IBAction)toWeinXinPYQ:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"weixin://pyq?username=zww"];
    if ([[UIApplication sharedApplication]canOpenURL:url]) {
        [[UIApplication sharedApplication]openURL:url];
    }
}
- (IBAction)toWeinXinHY:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"weixin://hy"];
    if ([[UIApplication sharedApplication]canOpenURL:url]) {
        [[UIApplication sharedApplication]openURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
