//
//  main.m
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//
//        ⚀ ⚁ ⚂ ⚃ ⚄ ⚅

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        GameController *gameController = [[GameController alloc] init];
        NSString *command;
        BOOL gameOn = YES;
        
        while(gameOn == YES) {
            [inputHandler printMenu];
            command = [inputHandler returnUserString];
            
            if([command isEqualToString:@"roll"]) {
                NSLog(@"The values are: ");
                [gameController rollUnheldDice];
            } else if ([command isEqualToString:@"quit"]) {
                NSLog(@"GAME OVER");
                gameOn = NO;
            } else if ([command isEqualToString:@"hold"]) {
                NSLog(@"Which dice would you like to hold? (1-5)");
                command = [inputHandler returnUserString];
                [gameController holdDice:command.integerValue];
            } else if ([command isEqualToString:@"unhold"]) {
                NSLog(@"Which dice would you like to unhold? (1-5)");
                command = [inputHandler returnUserString];
                [gameController unholdDice:command.integerValue];
            } else if ([command isEqualToString:@"reset"]) {
                [gameController resetDice];
            } else {
                NSLog(@"Invalid command. Please try again.");
            }
            [gameController score];
        }
    }
    return 0;
}
