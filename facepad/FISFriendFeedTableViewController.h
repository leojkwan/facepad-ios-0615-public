//
//  FISFriendFeedTableViewController.h
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"

@interface FISFriendFeedTableViewController : UITableViewController

@property (nonatomic, strong) FISUser *friendClicked;

@end
