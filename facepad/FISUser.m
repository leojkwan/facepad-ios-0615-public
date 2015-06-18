//
//  FISUser.m
//  facepad
//
//  Created by Leo Kwan on 6/17/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISUser.h"

@implementation FISUser





-(instancetype) initWithName:(NSString *)name profilePic:(UIImage*)profilepic {

    self= [super init];
    
    if (self) {
        _name = name;
        _postsFeed = [[NSMutableArray alloc] init];
        _profilePic = profilepic;
    }
    return self;
}






@end
