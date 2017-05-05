//
//  ViewController.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "ViewController.h"
#import "MapEngine.h"
#import "PMapFactory.h"
#import "PMapView.h"

@interface ViewController ()<PMapViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MapEngine *mapEngine = [[MapEngine alloc]init];
    id<PMapFactory> factory = [mapEngine getFactory];
    id<PMapView> mapView = [factory getMapView:self.view.frame];
    
    [self.view addSubview:mapView];
    
    
}


/**
 *在开始定位前，会调用此函数
 */
- (void)willStartLocatingUser{
    NSLog(@"willStartLocatingUser");
}
/**
 *在停止定位后，会调用此函数
 */
- (void)didStopLocatingUser{
    NSLog(@"willStartLocatingUser");
}

/**
 *用户方向更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateUserHeading:(id<PUserLocation>)userLocation{
    NSLog(@"didUpdateUserHeading");
}

/**
 *用户位置更新后，会调用此函数
 *@param userLocation 新的用户位置
 */
- (void)didUpdateUserLocation:(id<PUserLocation>)userLocation{
    NSLog(@"didUpdateBMKUserLocation");
}

/**
 *定位失败后，会调用此函数
 *@param error 错误号
 */
- (void)didFailToLocateUserWithError:(NSError *)error{
    NSLog(@"didFailToLocateUserWithError");
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
