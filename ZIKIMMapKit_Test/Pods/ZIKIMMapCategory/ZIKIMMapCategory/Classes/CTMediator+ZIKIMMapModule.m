//
//  CTMediator+ZIKIMMapModule.m
//  CTMediator
//
//  Created by ZIKong on 2018/1/10.
//

#import "CTMediator+ZIKIMMapModule.h"

@implementation CTMediator (ZIKIMMapModule)
- (UIViewController *)SAMIMMapModule_aViewControllerWithMapStyle:(MapStyle)mapStyle mapKey:(NSString *)mapKey oldLocationInfo:(NSDictionary *)oldLocationInfo confirmAction:(void(^)(NSDictionary *info))confirmAction
{
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    paramsToSend[@"MapStyle"] = [NSNumber numberWithInteger:mapStyle];
    if (confirmAction) {
        paramsToSend[@"MapLocationBlock"] = confirmAction;
    }
    if(mapKey) {
        paramsToSend[@"MapKey"] = mapKey;
    }
    return [self performTarget:@"ZIKIMMapModule" action:@"viewController" params:paramsToSend shouldCacheTarget:NO];
}
@end
