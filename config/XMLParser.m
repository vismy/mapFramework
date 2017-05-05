//
//  XMLParser.m
//  MapFramework
//
//  Created by macPro on 2017/5/3.
//  Copyright © 2017年 macPro. All rights reserved.
//

#import "XMLParser.h"
#import "MapObject.h"

@interface XMLParser ()<NSXMLParserDelegate>
@property(nonatomic,strong)NSMutableArray *array;
@end

@implementation XMLParser
- (instancetype)init{
    if (self = [super init]) {
        _array = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSMutableArray *)parserMap{
    //绑定delegate
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"config" ofType:@"map.xml"];
    NSURL* url = [[NSURL alloc] initFileURLWithPath:filePath];
    NSXMLParser* xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    xmlParser.delegate = self;
    //解析
    [xmlParser parse];
    return _array;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict{
    
    if ([elementName isEqualToString:@"map"]) {
        MapObject *map = [[MapObject alloc]init];
        map.mapid = attributeDict[@"id"];
        map.apiKey = attributeDict[@"apiKey"];
        map.factoryName = attributeDict[@"factoryName"];
        map.isOpen = attributeDict[@"isOpen"];
        [_array addObject:map];
    }
}


@end
