//
//  FISImageTableViewCell.h
//  facepad
//
//  Created by Leo Kwan on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISFriendFeedTableViewController.h"
#import "FISTextTableViewCell.h"


@interface FISImageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageEntry;

@end
