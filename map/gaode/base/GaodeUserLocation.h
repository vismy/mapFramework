//
//  GaodeUserLocation.h
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PUserLocation.h"
#import <AMapLocationKit/AMapLocationKit.h>
#import <MAMapKit/MAMapKit.h>

@interface GaodeUserLocation : NSObject<PUserLocation>

- (instancetype)initWithUserLocation:(MAUserLocation *)userLocation;

@end
