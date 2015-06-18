//
//  FISFriendsTableViewController.m
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISFriendsTableViewController.h"

@interface FISFriendsTableViewController ()

@end

@implementation FISFriendsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISImagePost *image1 = [[FISImagePost alloc] init];
    FISImagePost *image2 = [[FISImagePost alloc] init];
    FISImagePost *image3 = [[FISImagePost alloc] init];
    FISImagePost *image4 = [[FISImagePost alloc] init];

    FISTextPost *text1 = [[FISTextPost alloc] init];
    FISTextPost *text2 = [[FISTextPost alloc] init];
    FISTextPost *text3 = [[FISTextPost alloc] init];
    FISTextPost *text4 = [[FISTextPost alloc] init];


    text1.textEntry = @"Hi, This is my first post";
    text2.textEntry = @"Hi, This is my second post";
    text3.textEntry = @"Hi, This is my third post";
    
    UIImage *leoPic = [UIImage imageNamed:@"leoPic"];
    UIImage *joePic = [UIImage imageNamed:@"joe"];

    image1.image = [UIImage imageNamed:@"imagePost1"];

    FISUser *joe = [[FISUser alloc] initWithName:@"Joe" profilePic:joePic];
    FISUser *leo = [[FISUser alloc] initWithName:@"Leo" profilePic:leoPic];
    FISUser *ashley = [[FISUser alloc] initWithName:@"Ashley" profilePic:leoPic];
    FISUser *alan = [[FISUser alloc] initWithName:@"Alan" profilePic:leoPic];
    

    leo.postsFeed = [@[text1,text2,text3] mutableCopy];
    
    joe.postsFeed = [@[image1,image1,image1,image1,image1,image1,image1,image1] mutableCopy];
    
//    self.friend.postsFeed = [[NSDictionary alloc] init];
//    leo.postsFeed = @{text1.dateOfPost: text1,
//                      text2.dateOfPost: text2,
//                      text3.dateOfPost: text3,
//                      image1.dateOfPost: image1,
//                      image2.dateOfPost: image2};
    
    self.initialFriends = @[joe,leo,ashley,alan];
    self.listOfFriends = [[NSMutableArray alloc] init];
    [self.listOfFriends addObjectsFromArray:self.initialFriends];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.listOfFriends.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"friendCell" forIndexPath:indexPath];
    
    FISUser *userForThisRow = self.listOfFriends[indexPath.row];
    
    cell.textLabel.text = userForThisRow.name;
    
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISFriendFeedTableViewController *destinationVC = segue.destinationViewController;
    
    NSIndexPath *indexClicked = self.tableView.indexPathForSelectedRow;
    
    destinationVC.friendClicked = self.listOfFriends[indexClicked.row];

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/




@end
