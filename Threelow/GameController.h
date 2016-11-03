//
//  GameController.h
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

-(void)rollUnheldDice;
-(void)holdDice:(NSInteger)number;
-(void)unholdDice:(NSInteger)number;
-(void)resetDice;
-(void)score;

@end
