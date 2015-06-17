//
//  FISUser.h
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTextPost.h"
#import "FISImagePost.h"

@interface FISUser : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *profilePic;
@property (nonatomic, strong) NSMutableArray *postsFeed;


@property (nonatomic, strong) NSMutableArray *textEntries;
@property (nonatomic, strong) NSMutableArray *ImageEntries;




-(instancetype) initWithName:(NSString *)name;



@end
