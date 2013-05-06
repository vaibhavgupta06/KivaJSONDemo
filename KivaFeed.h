//
//  KivaFeed.h
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

#import "JSONModel.h"
#import "LoanModel.h"


@interface KivaFeed : JSONModel

@property(nonatomic, strong) NSArray<LoanModel> *loans;

@end
