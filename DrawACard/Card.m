//
//  Card.m
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize iSuite, iValue;

- (id) initWithSuite:(int)suite value:(int) value
{
//    650 336 1831
    self = [super init];
    if (self) {
        iSuite = suite;
        iValue = value;
    }
    return self;
}
@end
