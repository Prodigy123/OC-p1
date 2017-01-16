//
//  PlayingCard.m
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;
+(NSArray *)validSuit{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}
+(NSArray *)rankString{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+(NSUInteger) maxRank{return [[PlayingCard rankString] count]-1;}
-(NSString *)content{
    NSArray *rankString = [PlayingCard rankString];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}
-(void)setRank:(NSUInteger)rank{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;  
    }
}
-(int)match:(NSArray *)otherCards{
    int score = 0;
    if([otherCards count] == 1){
        PlayingCard *card = [otherCards firstObject];
        if([self.suit isEqualToString:card.suit]){
            score = 1;
        }else if(self.rank == card.rank){
            score = 4;
        }
    }
    return score;
}
-(void)setSuit:(NSString *)suit{
    if([[PlayingCard validSuit] containsObject:suit]){
        _suit = suit;
    }
}
-(NSString *) suit{
    return _suit ? _suit : @"?";
}
@end
