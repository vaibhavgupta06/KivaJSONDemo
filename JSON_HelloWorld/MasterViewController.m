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
    _feed = [[KivaFeed alloc] initFromURLWithString:kivaURL completion:^(JSONModel *model, JSONModelError *err) {
       
        //hide the loader view
        [HUD hideUIBlockingIndicator];
        
        //json fetched
        NSLog(@" loans : %@", _feed.loans);
        
        //reload the table view
        [self.tableView reloadData];
    }];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_feed.loans count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create a cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    LoanModel *loan = _feed.loans[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ from %@",loan.name,loan.location.country];
    
    return cell;
}


@end
