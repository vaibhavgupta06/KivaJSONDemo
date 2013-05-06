//
//  LocationModel.m
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

#import "LocationModel.h"

@implementation LocationModel

+(JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"country_code": @"countryCode"}];
}

@end
