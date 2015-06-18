    //
//  FISFriendFeedTableViewController.m
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISFriendFeedTableViewController.h"

@interface FISFriendFeedTableViewController ()


@end

@implementation FISFriendFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.friendClicked.name;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return self.friendClicked.postsFeed.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableArray *userFeed = self.friendClicked.postsFeed;
    NSInteger postAtThisRow = indexPath.section;
    
    if ([userFeed[postAtThisRow] isKindOfClass:[FISTextPost class]]) {// THIS DON'T WORK!!!!
    
        NSLog(@"Am I inside?");
            FISTextTableViewCell *textCell = [tableView dequeueReusableCellWithIdentifier:@"textPostReuseCell" forIndexPath:indexPath];
            textCell.textEntryField.text = [userFeed[postAtThisRow] textEntry]; // this is how the content shows up!
            textCell.profileImageView.image = self.friendClicked.profilePic; // this is how the profile shows up!
            textCell.userNameLabel.text = self.friendClicked.name; // this is how the name shows up

            return textCell;

    }
    
    else if ([userFeed[postAtThisRow] isKindOfClass:[FISImagePost class]]) {
            FISImageTableViewCell *imageCell = [tableView dequeueReusableCellWithIdentifier:@"imagePostReuseCell" forIndexPath:indexPath];
            
            imageCell.imageEntry.image = [userFeed[postAtThisRow] image]; // this is how the content shows up!
            imageCell.profileImageView.image = self.friendClicked.profilePic; // this is how the profile shows up!
            imageCell.userNameLabel.text = self.friendClicked.name; // this is how the name shows up

            return imageCell;
    }
    


}

@end
