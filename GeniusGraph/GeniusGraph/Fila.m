//
//  Fila.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//


//Usado para logica de gameplay.
#import "Fila.h"

@implementation Fila

-(id)init {
    self = [super init];
    elementos = [[NSMutableArray alloc] init];
    return self;
}

-(void) enfileirar:(NSObject *)elemento {
    if (elemento == nil)
        return;
    [elementos addObject:elemento];
}

-(void) desenfileirar {
    if ([self vazio])
        return;
    [elementos removeObjectAtIndex:0];
}

-(NSObject*) ler {
    if ([self vazio])
        exit(0);
    return [elementos firstObject];
}

-(int) tamanho
{
    return (int)[elementos count];
}

-(void) esvaziar
{
    for(int i = 0 ; i < [self tamanho];i++)
    {
        [self desenfileirar];
    }
}

-(BOOL) vazio {
    if ([elementos count] == 0)
        return true;
    else return false;
}

@end
