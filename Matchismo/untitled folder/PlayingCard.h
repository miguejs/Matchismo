//
//  PlayingCard.h
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 05/06/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
