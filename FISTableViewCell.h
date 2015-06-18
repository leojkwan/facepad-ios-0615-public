//
//  FISTableViewCell.h
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
#import "FISTableViewCell.h"
@interface FISTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *textEntryField;



@end
