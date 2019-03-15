//
//  ZIKMapTextViewController.h
//  ZIKMapKit_Example
//
//  Created by ZIKong on 2018/1/10.
//  Copyright © 2018年 811528603@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapSearchKit/AMapSearchKit.h>

typedef void(^SelectLocationSuccessBlock)(NSDictionary *locationDic);

@interface ZIKMapTextViewController : UIViewController
@property (nonatomic,copy  )   SelectLocationSuccessBlock   successBlock;
@property (nonatomic, copy)    NSString *mapKey;//高德地图key
@end
