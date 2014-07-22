//
//  CardCtrl.m
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import "CardCtrl.h"
#import "Card.h"

@implementation CardCtrl

-(id)init
{
    self=[super init];
    if(self)
    {
        [self createCards];
    }
    
    return self;
}

-(void)drawACard
{
    if([arrCards count] > 0)
    {
        Card *nowCard = [arrCards lastObject];
        LogThis(@"CARD here: %@ of %@",
                [STR_VALUE objectAtIndex: nowCard.iValue],
                [STR_SUITE objectAtIndex: nowCard.iSuite]);
        [arrCards removeLastObject];
    }
    else
    {
        LogThis(@"Deck over. Shuffling Again...");
        [self cleanAndShuffle];
    }
}


-(void) cleanAndShuffle
{
    [self createCards];
}

-(void) createCards
{
    int counterSuite = 0;
    
    if(arrCards)
    {
        arrCards = nil;
    }
    
    arrCards  = [[NSMutableArray alloc] init];
    
    while (counterSuite < N_SUITES)
    {
        int counterValue = 0;
        while (counterValue < N_CARDS)
        {
            Card *myCard = [[Card alloc] initWithSuite:counterSuite value:counterValue];
            
            [arrCards addObject:myCard];
            counterValue++;
        }
        
        counterSuite++;
    }
    
//    for (Card *card in arrCards)
//    {
//        NSLog(@"The Card is: %@ of %@",[STR_VALUE objectAtIndex:card.iValue], [STR_SUITE objectAtIndex:card.iSuite]);
//        
//    }
    
    NSArray *shuffledDeck = [self shuffleTheDeck:arrCards];
    
//    for (Card *theCard in shuffledDeck)
//    {
//        NSLog(@"The Card is: %@ of %@",[STR_VALUE objectAtIndex:theCard.iValue], [STR_SUITE objectAtIndex:theCard.iSuite]);
//    }
    LogThis(@"Cards are shuffled. Ready to draw a card.");
}


-(NSArray *) shuffleTheDeck:(NSMutableArray *) cardsArray
{
    int cards = N_SUITES * N_CARDS;
    
    for (int i = 0; i<cards; i++) {
        int randNum = arc4random_uniform(52);
        [cardsArray exchangeObjectAtIndex:i withObjectAtIndex:randNum];
    }
    
    return [NSArray arrayWithArray:cardsArray];
}

@end
