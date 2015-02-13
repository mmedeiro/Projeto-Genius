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

-(id) initWithCodigo:(int)newCodigo nomeJogador:(NSString*)newNome senha:(NSString*)newSenha {
    self = [super init];
    codigo = newCodigo;
    nomeJogador = newNome;
    senha = newSenha;
    return self;
}


@end
