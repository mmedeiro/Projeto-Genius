//
//  Jogador.m
//  Genius
//
//  Created by Mariana Medeiro on 13/02/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

@synthesize codigo, pontuacao, quantidadeDeJogos, nomeJogador, senha;

-(instancetype) initWithJogador:(NSString *)nome senha:(NSString *)fSenha
{
    self = [super init];
    nomeJogador = nome;
    senha=fSenha;
    return self;
}


@end