//
//  UnholdManager.m
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "UnholdManager.h"

@interface UnholdManager ()

@property (nonatomic) NSMutableArray *diceValues;

@end


@implementation UnholdManager

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

-(void)rollAll {
     for (Dice* myDice in self.diceValues) {
        [myDice rollDice];
    }
    [self displayDiceValues];
}

-(void)displayDiceValues {
    for (Dice* myDice in self.diceValues) {
        NSLog(@"%d", myDice.value);
    }
}

@end
