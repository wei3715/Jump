//
//  ViewController.m
//  WeChatApp
//
//  Created by mac on 2018/6/6.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "ZWWPYQViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)backToRYHK:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"ryhk://"];
    if ([[UIApplication sharedApplication]canOpenURL:url]) {
        [[UIApplication sharedApplication]openURL:url];
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"pyq"]) {
        ZWWPYQViewController *pyqVC = (ZWWPYQViewController *)segue.destinationViewController;
        pyqVC.param = self.param;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
