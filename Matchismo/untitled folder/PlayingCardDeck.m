//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 05/06/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import "PlayingCardDeck.h"


@implementation PlayingCardDeck
-(instancetype)init
{
    self = [super init];
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
        
    }
    return self;
}

@end
