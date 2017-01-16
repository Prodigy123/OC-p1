//
//  Car.m
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import "Card.h"
@interface Card()
@end
@implementation Card

-(int) match:(NSArray *)otherCards {
    int score = 0;
    for(Card *card in otherCards){
        if([card.content isEqualToString:self.content]){
            score++;
        }
    }
    return score;
}
@end
