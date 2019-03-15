//
//  ZIKMapHalfTextViewController.h
//  MJRefresh
//
//  Created by ZIKong on 2018/1/10.
//

#import <UIKit/UIKit.h>
typedef void(^SelectLocationSuccessBlock)(NSDictionary *locationDic);

@interface ZIKMapHalfTextViewController : UIViewController
@property (nonatomic,copy  )  NSString  *mapKey;
@property (nonatomic,copy  )  SelectLocationSuccessBlock   successBlock;
@end
