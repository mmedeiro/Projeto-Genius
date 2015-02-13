//
//  Jogo.h
//  Genius
//
//  Created by Mariana Medeiro on 13/02/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Genius.h"
#import "Jogador.h"

@interface Jogo : NSObject
{
    Genius *g;
    NSMutableArray *fila;
    
}

@property  Genius *g;
@property NSMutableArray *fila;

-(void) ranking;
-(void) janelas;


@end
