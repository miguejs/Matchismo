//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 05/06/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject
- (instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;
@property (nonatomic, readonly)NSInteger score;
@end
