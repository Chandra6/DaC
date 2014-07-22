//
//  Definitions.h
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#define N_CARDS      13
#define N_SUITES      4

#define LogThis(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

#define STR_SUITE @[@"Clubs",@"Spades",@"Diamonds", @"Hearts"]
#define STR_VALUE @[@"Ace",@"2",@"3", @"4",@"5",@"6", @"7",@"8",@"9", @"10",@"Jack",@"Queen", @"King"]


NS_ENUM(int, CSuite)
{
    SuiteClubs=1,SuiteSpades,SuiteDiamonds,SuiteHearts
};

NS_ENUM(int, CType)
{
    CTypeAce = 1, CType2, CType3, CType4, CType5,
          CType6, CType7, CType8, CType9, CType10,
          CTypeJ, CTypeQ, CTypeK
};

