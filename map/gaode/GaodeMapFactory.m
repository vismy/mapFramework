//
//  GaodeMapFactory.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "GaodeMapFactory.h"
#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapLocationKit/AMapLocationKit.h>

@interface GaodeMapFactory ()

@end

@implementation GaodeMapFactory
- (instancetype)initWithApiKey:(NSString *)apiKey{
    if (self = [super init]) {
        
        [AMapServices sharedServices].apiKey = apiKey;
        AMapLocationManager *manager = [[AMapLocationManager alloc]init];
        [manager startUpdatingLocation];
    }
    return self;
}

- (id<PMapView>)getMapView:(CGRect)frame{
    return [[GaodeMapView alloc]initWithFrame:frame];
}


@end
