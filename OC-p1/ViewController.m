//
//  ViewController.m
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import "ViewController.h"
#import "CardMatchingGame.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong,nonatomic) CardMatchingGame *game;
@end

@implementation ViewController
-(CardMatchingGame *) game{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDect:[self creatDeck]];
    return _game;
}
- (IBAction)retry:(UIButton *)sender {
    self.game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDect:[self creatDeck]];
    [self updateUI];
}
// abstract
- (Deck *)creatDeck{
    return nil;
}
- (IBAction)touchButton:(UIButton *)sender {
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}
- (void) updateUI{
    for(UIButton  *cardButton in self.cardButtons){
        NSUInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self imageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.matched;
    }
    [self.score setText:[NSString stringWithFormat:@"Score:  %ld",[self.game score]]];
}
-(NSString *) titleForCard: (Card *)card{
    return card.chosen ? card.content : @"";
}
-(UIImage *)imageForCard: (Card *)card{
    return [UIImage imageNamed:card.chosen ? @"frontimage" : @"backimage"];
}


@end
