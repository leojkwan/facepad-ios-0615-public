//
//  FISFriendsTableViewController.h
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISFriendFeedTableViewController.h"
#import "FISTextTableViewCell.h"


@interface FISFriendsTableViewController : UITableViewController

@property (nonatomic, strong) FISUser *friend;
@property (nonatomic, strong) NSMutableArray *listOfFriends;
@property (nonatomic, strong) NSArray *initialFriends;



@end
