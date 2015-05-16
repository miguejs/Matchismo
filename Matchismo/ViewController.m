//
//  ViewController.m
//  Matchismo
//
//  Created by Miguel Alfredo Garcia Baca on 16/05/15.
//  Copyright (c) 2015 madev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

}

@end
