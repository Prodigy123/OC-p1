//
//  CardMatchingGame.h
//  OC-p1
//
//  Created by 吉安 on 16/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
@interface CardMatchingGame : NSObject
@property (nonatomic,readonly) NSInteger score;
-(instancetype)initWithCardCount: (NSUInteger) count usingDect: (Deck *)deck;
-(void)chooseCardAtIndex: (NSUInteger) index;
-(Card *)cardAtIndex: (NSUInteger) index;
@end 
