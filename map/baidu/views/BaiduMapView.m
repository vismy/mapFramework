//
//  BaiduMapView.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "BaiduMapView.h"
#import "PMapViewDelegate.h"
#import <BaiduMapAPI_Map/BMKMapView.h>
#import <BaiduMapAPI_Location/BMKLocationService.h>
#import "BaiduUserLocation.h"

@interface BaiduMapView ()<BMKMapViewDelegate,BMKLocationServiceDelegate>
@property(nonatomic,weak)id<PMapViewDelegate> delegate;

@end

@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        BMKMapView *mapView = [[BMKMapView alloc]initWithFrame:frame];
        mapView.delegate = self;
        [self addSubview:mapView];
    }
    return self;
}

- (void)setDelegate:(id<PMapViewDelegate>)delegate{
    _delegate = delegate;
}



- (void)willStartLocatingUser{
    [_delegate willStartLocatingUser];
}

/**
 *在停止定位后，会调用此函数
 */
- (void)didStopLocatingUser{
    [_delegate didStopLocatingUser];
}

/**
 *用户方向更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation{
    BaiduUserLocation *ul= [[BaiduUserLocation alloc]initWithUserLocation:userLocation];
    [_delegate didUpdateUserHeading:ul];
}

/**
 *用户位置更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation{
    BaiduUserLocation *ul= [[BaiduUserLocation alloc]initWithUserLocation:userLocation];
    [_delegate didUpdateUserLocation:ul];
}

/**
 *定位失败后，会调用此函数
 *@param error 错误号
 */
- (void)didFailToLocateUserWithError:(NSError *)error{
    [_delegate didFailToLocateUserWithError:error];
}





@end
