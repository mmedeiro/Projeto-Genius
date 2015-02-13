//
//  Jogo.m
//  Genius
//
//  Created by Mariana Medeiro on 13/02/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

#import "Jogo.h"



@implementation Jogo

@synthesize g, fila;
-(instancetype) initJogo
{
    self = [super self];
    g = [[Genius alloc] init];
    fila = [[NSMutableArray alloc] init];
    return self;
}

-(void) Update
{
    BOOL jogoRodando = true;
    int entrada1 = 0;
    
    char nome[40];
    
    
    while (jogoRodando)
    {
        BOOL menu = true;
        while(menu)
        {
            NSLog(@"Bem vindo ao Genius!!");
            NSLog(@"\n1-Deseja logar ou 2-criar um novo usuario?");
            scanf("%i",&entrada1);
            if(entrada1 == 2)
            {
                NSLog(@"Digite seu nome");
                scanf("%39s",nome);
                NSString *fNome = [NSString stringWithFormat:@"%s",nome];
                NSLog(@"Digite sua senha");
                scanf("%39s",nome);
                NSString *fSenha = [NSString stringWithFormat:@"%s",nome];
                Jogador *novoJogador;
                novoJogador = [[Jogador alloc] initWithCodigo:0 nomeJogador:fNome senha:fSenha];
                [fila addObject:novoJogador];
                NSLog(@"Login criado com sucesso.");
            }
            else
            {
                NSLog(@"Digite seu nome");
                scanf("%39s",nome);
                NSString *fNome = [NSString stringWithFormat:@"%s",nome];
                NSLog(@"Digite sua senha");
                scanf("%39s",nome);
                NSString *fSenha = [NSString stringWithFormat:@"%s",nome];
                
                Jogador *jogador;
                for(int i = 0; i < [fila count]; i++)
                {
                    jogador = [fila objectAtIndex:i];
                    if([jogador nomeJogador] == fNome)
                    {
                        if([jogador senha] == fSenha)
                        {
                            NSLog(@"Login feito com sucesso.");
                            menu = false;
                        }
                    }
                }
                if(menu)
                {
                    NSLog(@"Dados errados.");
                }
            }
            
            jogoRodando = false;
        }
        
    }
    
    NSLog(@"Atenção, digite a sequência de cores em número para jogar. /n 1- Vermelho /n 2- Verde /n 3- Amarelo /n 4- Azul");
    
    BOOL vencer = true;
    
    do {
        [g mostrarCores ];
        if ([g lerCores]) {
            NSLog(@"Parabéns, você passou de nível!! Nível atual: %i", g.nivel);
            g.nivel++;
        } else {
            vencer = false;
            NSLog(@"Você perdeu!");
            [self ranking];
        }
    } while (vencer);
    
}

-(void) ranking{
    if ([fila count] == 0) {
        return;
    }
    NSMutableArray *unsortedJ = [[NSMutableArray alloc] initWithArray:fila];
    Jogador *aux;
    for (int i=0; i<[fila count]; i++) {
        aux = [unsortedJ objectAtIndex:0];
        NSUInteger count = [unsortedJ count];
        for (int j=0; j<count; j++) {
            if ([[unsortedJ objectAtIndex:j] pontuacao] >= [aux pontuacao]) {
                aux = [unsortedJ objectAtIndex:j];
            }
        }
        NSLog(@"%i - Nome: %@ Pontos: %i", i+1, [aux nomeJogador], [aux pontuacao]);
        [unsortedJ removeObject:aux];
    }
}

-(void) janelas{
    
}

@end
