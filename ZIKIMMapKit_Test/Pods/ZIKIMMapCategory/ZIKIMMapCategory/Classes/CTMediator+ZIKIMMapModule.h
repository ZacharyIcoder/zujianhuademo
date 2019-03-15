//
//  CTMediator+ZIKIMMapModule.h
//  CTMediator
//
//  Created by ZIKong on 2018/1/10.
//


    //  Categories(这是一个单独的repo，所用需要调度其他模块的人，只需要依赖这个repo。这个repo由target-action维护者维护)
    //  为了实现解耦，权衡的方案采用了去model化，传值用的dictionary
    //  大神博客 https://casatwy.com/category/blog.html
    //  在现有工程中实施基于CTMediator的组件化方案 https://casatwy.com/modulization_in_action.html

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MapStyle) {
    MapStyleText,       //纯文字
    MapStyleAMapHalf,   //高德地图 一半地图一半文字

        //    MapStyleBMKMapHalf, //百度地图 一半地图一半文字
        //    MapStyleAMapAll,    //高德地图 全部显示
        //    MapStyleBMKMapAll,  //百度地图 全部显示

        //这个模块暂时实现两种地图供选择，以后再完善
};

@interface CTMediator (ZIKIMMapModule)

/**
 根据不同的mapStyle 跳转到Map模块下不同的地图风格

 @param mapStyle 选择的地图展示类型
 @param mapKey 第三方地图 mapKey
 @param oldLocationInfo 已选择的地址信息
 @param confirmAction 返回选择的地址信息{@"lat":lat,@"lng":lng,@"address":address} （纬度坐标和地址信息）
 @return return value description
 */
- (UIViewController *)SAMIMMapModule_aViewControllerWithMapStyle:(MapStyle)mapStyle mapKey:(NSString *)mapKey oldLocationInfo:(NSDictionary *)oldLocationInfo confirmAction:(void(^)(NSDictionary *info))confirmAction;
@end
