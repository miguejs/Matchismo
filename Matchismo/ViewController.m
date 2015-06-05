//
//  ViewController.m
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 16/05/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation ViewController

-(CardMatchingGame *)game{
    if(!_game)_game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}


//-(void)setFlipCount:(int)flipCount {
//    
//    _flipCount= flipCount;
//    self.Label1.text= [NSString stringWithFormat:@"Flips: %d",self.flipCount];
//}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    int chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
    

//    
//    
//    
//    if ([sender.currentTitle length]) {
//        
//        [ sender setBackgroundImage:[ UIImage imageNamed:@"back card" ]
//                           forState:UIControlStateNormal];
//        
//        [ sender setTitle:@"" forState:UIControlStateNormal ];
//        
//    } else    {
//        
//        [ sender setBackgroundImage:[ UIImage imageNamed:@"blank card" ]
//                           forState:UIControlStateNormal];
//        
//        [ sender setTitle:@"A♣︎" forState:UIControlStateNormal ];
//    }
//
//    self.flipCount++;
}
-(void)updateUI{
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        
        self.Label1.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
        
        if([cardButton.titleLabel.text  hasSuffix:@"💣"]){
            
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Perdiste " message:@"Deseas Reiniciar el juego" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", nil];
            [alert show];

        }

    
        
    }
}
-(NSString *)titleForCard:(Card *)card{
        return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.isChosen ? @"blank card" : @"back card"];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) { // Set buttonIndex == 0 to handel "Ok"/"Yes" button response
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }}
@end
