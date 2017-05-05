//
//  MapEngine.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "MapEngine.h"
#import "XMLParser.h"
#import "MapObject.h"

@implementation MapEngine

- (id<PMapFactory>)getFactory{
    XMLParser *xmlParser = [[XMLParser alloc]init];
    NSArray *a = [xmlParser parserMap];
    for (MapObject *mobj in a) {
        if ([mobj.isOpen isEqualToString:@"YES"]) {
            NSString *factoryName = mobj.factoryName;
            return [[NSClassFromString(factoryName) alloc]initWithApiKey:mobj.apiKey];
        }
    }
    NSAssert(a.count == 0, @"未选中地图");
    return nil;
}

@end
