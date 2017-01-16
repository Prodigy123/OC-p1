//
//  Deck.m
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import "Deck.h"
@interface Deck()
@property (nonatomic,strong) NSMutableArray *cards;
@end
@implementation Deck
-(NSMutableArray *) cards{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}
-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}
-(void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}
-(Card *)drawRandomCard{
    Card *randomCard = nil;
    if([self.cards count]){
        unsigned index = arc4random()%[self.cards count];
        randomCard = [self.cards objectAtIndex:index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}
@end
