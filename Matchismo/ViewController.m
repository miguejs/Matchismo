//
//  ViewController.m
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 16/05/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (nonatomic) int flipCount;
@end

@implementation ViewController

-(void)setFlipCount:(int)flipCount {
    
    _flipCount= flipCount;
    self.Label1.text= [NSString stringWithFormat:@"Flips: %d",self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
   
    if ([sender.currentTitle length]) {
        
        [ sender setBackgroundImage:[ UIImage imageNamed:@"back card" ]
                           forState:UIControlStateNormal];
        
        [ sender setTitle:@"" forState:UIControlStateNormal ];
        
    } else    {
        
        [ sender setBackgroundImage:[ UIImage imageNamed:@"blank card" ]
                           forState:UIControlStateNormal];
        
        [ sender setTitle:@"A♣︎" forState:UIControlStateNormal ];
    }

    self.flipCount++;
}


@end
