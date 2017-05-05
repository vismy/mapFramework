//
//  PMapView.h
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PMapViewDelegate.h"
#import "PUserLocation.h"

@protocol PMapView <NSObject>

- (void)setDelegate:(id<PMapViewDelegate>)delegate;



@end
