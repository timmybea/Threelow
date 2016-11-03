//
//  Dice.m
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//
//Create a Dice class.
//It should have a property to store its current value, and a method to randomize that value.
//Make five instances of the Dice class, randomize their values and print them.

#import "Dice.h"

@interface Dice ()

@end

@implementation Dice

-(id)init {
    self = [super init];
    if(self) {
        _held = NO;
    }
    return self;
}

-(void)rollDice {
    int lowerBound = 1;
    int upperBound = 6;
    int rndValue = lowerBound + (arc4random() % (upperBound - lowerBound));
    self.value = rndValue;
}

@end
