//
//  BaiduUserLocation.h
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI_Base/BMKUserLocation.h>
#import "PUserLocation.h"

@interface BaiduUserLocation : NSObject<PUserLocation>


- (instancetype)initWithUserLocation:(BMKUserLocation *)userLocation;


@end
