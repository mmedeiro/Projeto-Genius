//
//  main.m
//  Projeto-Genius
//
//  Created by Mariana Medeiro on 13/02/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "jogo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Jogo *play;
        play = [[Jogo alloc] init];
        [play Update];
        
    }
    return 0;
}
