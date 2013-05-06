//
//  LoanModel.h
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

#import "JSONModel.h"
#import "LocationModel.h"

@protocol LoanModel @end

@interface LoanModel : JSONModel

@property(nonatomic,strong) NSString *name;
@property(nonatomic, strong) NSString *status;
@property(nonatomic, strong) NSString *use;
@property(nonatomic, strong) LocationModel *location;


@end
