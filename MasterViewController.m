//
//  MasterViewController.m
//  PetFind
//
//  Created by Daniel Kwiatkowski on 2015-06-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"
#import "Pet.h"
#import <UIKit/UIKit.h>

@interface MasterViewController () 
@end

@implementation MasterViewController

-(NSArray*)pets{
    return ((AppDelegate*)[[UIApplication sharedApplication]delegate]).pets;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self pets].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Pet* pet = [self pets][indexPath.row];
    cell.textLabel.text = pet.title;
    return cell;
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        // find the tapped cat
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Pet *pet = [self pets][indexPath.row];
        
        // provide this to the detail view
        [[segue destinationViewController] setPet:pet];
    }


}


@end
