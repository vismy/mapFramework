//
//  PMapFactory.h
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PMapView.h"
#import <UIKit/UIKit.h>

@protocol PMapFactory <NSObject>
- (instancetype)initWithApiKey:(NSString *)apiKey;

- (id<PMapView>)getMapView:(CGRect)frame;
@end
