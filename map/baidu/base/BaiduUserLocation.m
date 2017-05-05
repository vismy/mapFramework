//
//  BaiduUserLocation.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "BaiduUserLocation.h"


@interface BaiduUserLocation ()
@property(nonatomic,strong)BMKUserLocation *userLocation;
@end

@implementation BaiduUserLocation
- (instancetype)initWithUserLocation:(BMKUserLocation *)userLocation{
    if (self = [super init]) {
        _userLocation = userLocation;
    }
    
    return self;
}

//获取百度地图的
- (id)getMapUserLocation{
    return _userLocation;
}

- (BOOL)isUpdating{
    return _userLocation.isUpdating;
}

- (CLLocation *)getLocation{
    return _userLocation.location;
}

- (CLHeading *)getHeading{
    return _userLocation.heading;
}

- (NSString *)getTitle{
    return _userLocation.title;
}

- (NSString *)getSubtitle{
    return _userLocation.subtitle;
}

@end
