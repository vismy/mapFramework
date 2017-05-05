//
//  PMapViewDelegate.h
//  framework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PUserLocation.h"

@protocol PMapViewDelegate <NSObject>

/**
 *在开始定位前，会调用此函数
 */
- (void)willStartLocatingUser;
/**
 *在停止定位后，会调用此函数
 */
- (void)didStopLocatingUser;

/**
 *用户方向更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateUserHeading:(id<PUserLocation>)userLocation;

/**
 *用户位置更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateUserLocation:(id<PUserLocation>)userLocation;

/**
 *定位失败后，会调用此函数
 *@param error 错误号
 */
- (void)didFailToLocateUserWithError:(NSError *)error;





@end
