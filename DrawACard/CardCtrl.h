//
//  CardCtrl.h
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Definitions.h"

@interface CardCtrl : NSObject
{
    NSMutableArray *arrCards;
}
-(void) drawACard;
-(void) cleanAndShuffle;
-(NSArray *) shuffleTheDeck:(NSMutableArray *) cardsArray;

@end
