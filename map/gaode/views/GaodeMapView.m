//
//  GaodeMapView.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "GaodeMapView.h"
#import "PMapViewDelegate.h"
#import <AMapLocationKit/AMapLocationKit.h>
#import <MAMapKit/MAMapKit.h>

@interface GaodeMapView ()<MAMapViewDelegate,AMapLocationManagerDelegate>
@property(nonatomic,weak)id<PMapViewDelegate> delegate;

@end

@implementation GaodeMapView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        MAMapView *mapView = [[MAMapView alloc]initWithFrame:frame];
        mapView.delegate = self;
        [self addSubview:mapView];
    }
    return self;
}

- (void)setDelegate:(id<PMapViewDelegate>)delegate{
    _delegate = delegate;
}


- (void)mapViewWillStartLocatingUser:(MAMapView *)mapView{
    [_delegate willStartLocatingUser];
}


- (void)mapViewDidStopLocatingUser:(MAMapView *)mapView{
    [_delegate didStopLocatingUser];
}

- (void)mapView:(MAMapView *)mapView didFailToLocateUserWithError:(NSError *)error{
    [_delegate didFailToLocateUserWithError:error];
}


@end
