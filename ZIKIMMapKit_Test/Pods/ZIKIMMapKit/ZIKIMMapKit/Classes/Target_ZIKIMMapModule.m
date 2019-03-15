//
//  Target_ZIKIMMapModule.m
//  MJRefresh
//
//  Created by ZIKong on 2018/1/10.
//

#import "Target_ZIKIMMapModule.h"
#import "ZIKMapTextViewController.h"
#import "ZIKMapHalfTextViewController.h"

typedef void (^MapLocationCallbackBlock)(NSDictionary *info);

@implementation Target_ZIKIMMapModule
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSNumber *number = params[@"MapStyle"];
    if (number.integerValue == 1) {
        ZIKMapHalfTextViewController *viewController = [[ZIKMapHalfTextViewController alloc] init];
        viewController.mapKey = params[@"MapKey"];
        viewController.successBlock = ^(NSDictionary *locationDic) {
            MapLocationCallbackBlock callback = params[@"MapLocationBlock"];
            if (callback) {
                callback(locationDic);
            }
        };
        return viewController;
    }
    else if (number.integerValue == 0) {
        ZIKMapTextViewController *viewController = [[ZIKMapTextViewController alloc] init];
        viewController.mapKey = params[@"MapKey"];
        viewController.successBlock = ^(NSDictionary *locationDic) {
            MapLocationCallbackBlock callback = params[@"MapLocationBlock"];
            if (callback) {
                callback(locationDic);
            }
        };
        return viewController;
    }
    else {
        return nil;
    }
}
@end
