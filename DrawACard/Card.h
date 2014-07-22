//
//  Card.h
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property(nonatomic, assign) int iSuite;
@property(nonatomic, assign) int iValue;
- (id) initWithSuite:(int)suite value:(int) value;
@end

