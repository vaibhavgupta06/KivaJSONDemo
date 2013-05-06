//
//  MasterViewController.m
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

#define kivaURL @"http://api.kivaws.org/v1/loans/search.json?status=fundraising"

#import "MasterViewController.h"
#import "JSONModelLib.h"
#import "KivaFeed.h"
#import "HUD.h"

@interface MasterViewController () {
    KivaFeed * _feed;
}

@end

@implementation MasterViewController

-(void)viewWillAppear:(BOOL)animated
{
    //show loader view
    [HUD showUIBlockingIndicatorWithText:@"Fetching JSON"];
    
    //fetch the feed
    [JSONHTTPClient getJSONFromURLWithString:kivaURL completion:^(NSDictionary *json, JSONModelError *err) {
        
        if (err) {
            NSLog(@"Some error occurred : %@",[err localizedDescription]);
        }
        
        NSArray *loans;
        loans = [LoanModel arrayOfModelsFromDictionaries:json[@"loans"]];
        if (loans) {
            NSLog(@"Loaded models successfully");
            NSLog(@"The first loan is : %@",((LoanModel *)loans[0]).name);
        }
    }];
    
}


@end
