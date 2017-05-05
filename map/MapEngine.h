//
//  MapEngine.h
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"
#import "PMapFactory.h"

@interface MapEngine : NSObject

- (id<PMapFactory>)getFactory;

@end
