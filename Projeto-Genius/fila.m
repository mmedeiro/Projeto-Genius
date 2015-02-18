//
//  Fila.m
//  Genius
//
//  Created by Samuel Shin Kim on 06/02/15.
//  Copyright (c) 2015 Samuel Shin Kim. All rights reserved.
//

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

-(void) esvaziar
{
    for(int i = 0 ; i < [self tamanho];i++)
    {
        [self desenfileirar];
    }
}


-(int) tamanho
{
    return (int)[elementos count];
}


-(BOOL) vazio {
    if ([elementos count] == 0)
        return true;
    else return false;
}

@end
