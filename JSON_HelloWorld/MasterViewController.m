//
//  MasterViewController.m
//  JSON_HelloWorld
//
//  Created by Vaibhav Gupta on 06/05/13.
//  Copyright (c) 2013 Vaibhav Gupta. All rights reserved.
//

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
    
}


@end
