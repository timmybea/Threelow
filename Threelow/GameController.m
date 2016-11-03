//
//  GameController.m
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "GameController.h"

@interface GameController ()

@property (nonatomic) NSMutableArray *diceValues;

@end


@implementation GameController

-(id)init {
    self = [super init];
    if(self) {
        _diceValues = [[NSMutableArray alloc]init];
        for(int i = 0; i < 5; i++) {
            Dice *dice = [[Dice alloc] init];
            [_diceValues addObject:dice];
        }
    }
    return self;
}

-(void)rollUnheldDice {
    for (Dice* myDice in self.diceValues) {
        if(myDice.held == NO) {
            [myDice rollDice];
        }
    }
    [self displayDiceValues];
}

-(void)displayDiceValues {
    int i = 1;
    for (Dice *myDice in self.diceValues) {
        if(myDice.held == YES) {
            NSLog(@"Dice %d is: [%d]", i, myDice.value);
        } else {
            NSLog(@"Dice %d is: %d", i, myDice.value);
        }
        i++;
    }
}

-(void)holdDice:(NSInteger)number {
    [[self.diceValues objectAtIndex:(number - 1)] setHeld:YES];
    NSLog(@"You have held dice number %ld", number);
}


-(void)unholdDice:(NSInteger)number {
    [[self.diceValues objectAtIndex:(number - 1)] setHeld:NO];
    NSLog(@"You have unheld dice number %ld", number);
}

-(void)resetDice {
    for(Dice *myDice in self.diceValues) {
        [myDice setHeld:NO];
    }
}

-(void)score {
    int score = 0;
    for (Dice *myDice in self.diceValues) {
        if(myDice.value != 3) {
            score += myDice.value;
        }
    }
    NSLog(@"Your current score is: %d", score);
}


@end
