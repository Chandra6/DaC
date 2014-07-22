//
//  main.m
//  DrawACard
//
//  Created by Chandrasekhar Polepeddi on 21/07/14.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardCtrl.h"
#import "Definitions.h"

int main(int argc, const char * argv[])
{
    CardCtrl *myCards = [[CardCtrl alloc]init];
    
    while(1)
    {
        int opt;

        LogThis(@"1. Draw a card\n0. Quit\n\nYour option : ");
        scanf("%d",&opt);
        switch(opt)
        {
            case 0:
                exit(0);
                
            case 1:
                [myCards drawACard];
                break;
            default:
                LogThis(@"Not an option.\n");
                break;
        }
    }
    return 0;
}

