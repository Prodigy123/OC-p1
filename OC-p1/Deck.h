//
//  Deck.h
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
-(void)addCard: (Card *)card atTop: (BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *)drawRandomCard;
@end
