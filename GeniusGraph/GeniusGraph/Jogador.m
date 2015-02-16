//
//  Jogador.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador
@synthesize user,senha,pontos;

-(instancetype) initJogador:(NSString *)nUser senha:(NSString *)nSenha
{
    self = [super self];
    
    user = nUser;
    senha = nSenha;
    pontos = 0;
    
    return self;
}

@end
