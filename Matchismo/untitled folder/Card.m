//
//  Card.m
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 05/06/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}


@end
