//
//  PUserLocation.h
//  framework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol PUserLocation <NSObject>

- (id)getMapUserLocation;

- (BOOL)isUpdating;

- (CLLocation *)getLocation;

- (CLHeading *)getHeading;

- (NSString *)getTitle;

- (NSString *)getSubtitle;





@end
//
