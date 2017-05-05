//
//  GaodeUserLocation.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "GaodeUserLocation.h"

@interface GaodeUserLocation ()
@property(nonatomic,strong)MAUserLocation *userLocation;

@end

@implementation GaodeUserLocation
- (instancetype)initWithUserLocation:(MAUserLocation *)userLocation{
    if (self = [super init]) {
        _userLocation = userLocation;
    }
    
    return self;
}

- (id)getMapUserLocation{
    return _userLocation;
}






@end
