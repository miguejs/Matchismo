//
//  Deck.h
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 05/06/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject

- (void)addCard:(Card *)card
          atTop:(BOOL)atTop;

- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
