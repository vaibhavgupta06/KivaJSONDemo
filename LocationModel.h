//
//  LocationModel.h
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

#import "JSONModel.h"

@interface LocationModel : JSONModel

@property(nonatomic, strong) NSString *country;
@property(nonatomic, strong) NSString *countryCode;

@end
