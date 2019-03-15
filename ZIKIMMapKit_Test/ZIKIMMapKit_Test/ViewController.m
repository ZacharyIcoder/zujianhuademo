//
//  ViewController.m
//  ZIKIMMapKit_Test
//
//  Created by ZIKong on 2018/1/10.
//  Copyright © 2018年 youhuikeji. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+ZIKIMMapModule.h"
@interface ViewController ()

@end

//高德key
static NSString *GaoDeKey  = @"a3cddeb3b30ef0e11967bf5f73de00ea";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"地图组件 首页";
}

- (IBAction)textClick:(UIButton *)sender {
    UIViewController *viewController = [[CTMediator sharedInstance] SAMIMMapModule_aViewControllerWithMapStyle:MapStyleText mapKey:GaoDeKey oldLocationInfo:nil confirmAction:^(NSDictionary *info) {
        NSLog(@"MapInfo:%@",info);
    }];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)mapClick:(UIButton *)sender {
    UIViewController *viewController = [[CTMediator sharedInstance] SAMIMMapModule_aViewControllerWithMapStyle:MapStyleAMapHalf mapKey:GaoDeKey oldLocationInfo:nil confirmAction:^(NSDictionary *info) {
        NSLog(@"MapInfo:%@",info);
    }];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
