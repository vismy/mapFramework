//
//  BaiduMapFactory.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKMapManager.h>

@interface BaiduMapFactory ()
@property(nonatomic,strong)BMKMapManager* mapManager;
@end

@implementation BaiduMapFactory
- (instancetype)initWithApiKey:(NSString *)apiKey{
    if (self = [super init]) {

        _mapManager = [[BMKMapManager alloc]init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        [_mapManager start:apiKey  generalDelegate:nil];
        
    }
    return self;
}

- (id<PMapView>)getMapView:(CGRect)frame{
    return [[BaiduMapView alloc]initWithFrame:frame];
}

@end
