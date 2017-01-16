//
//  PlayingCardDeck.m
//  OC-p1
//
//  Created by 吉安 on 16/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck
-(instancetype) init{
    self = [super init];
    if(self){
        for(NSString *suit in [PlayingCard validSuit]){
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
