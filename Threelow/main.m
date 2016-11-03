//
//  main.m
//  Threelow
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//
//        ⚀ ⚁ ⚂ ⚃ ⚄ ⚅

#import <Foundation/Foundation.h>
#import "UnholdManager.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        UnholdManager *unholdManager = [[UnholdManager alloc] init];
        NSString *command;
        BOOL gameOn = YES;
        
        while(gameOn == YES) {
            [inputHandler printMenu];
            command = [inputHandler returnUserString];
            
            if([command isEqualToString:@"roll"]) {
                NSLog(@"The values are: ");
                [unholdManager rollAll];
            } else if ([command isEqualToString:@"quit"]) {
                NSLog(@"GAME OVER");
                gameOn = NO;
            } else {
                NSLog(@"Invalid command. Please try again.");
            }
        }
        
    }
    return 0;
}
