//
//  PlayingCard.h
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic,strong) NSString *suit;
@property(nonatomic) NSUInteger rank;
+(NSUInteger) maxRank;
+(NSArray *)validSuit;
@end
