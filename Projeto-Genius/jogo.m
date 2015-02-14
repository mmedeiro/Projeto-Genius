//
//  Jogo.m
//  Genius
//
//  Created by Mariana Medeiro on 13/02/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

#import "Jogo.h"



@implementation Jogo

@synthesize g, fila,jogadorAtual;
-(instancetype) initJogo
{
    self = [super self];
    return self;
}

-(void) Update
{
    BOOL jogoRodando = true;
    int entrada1 = 0;
    
    char nome[40];
    fila = [[NSMutableArray alloc] init];
    g = [[Genius alloc] init];
    
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
                NSLog(@"Digite seu nome para o login");
                scanf("%39s",nome);
                NSString *fNome = [NSString stringWithFormat:@"%s",nome];
                NSLog(@"Digite sua senha para o login");
                scanf("%39s",nome);
                NSString *fSenha = [NSString stringWithFormat:@"%s",nome];
                
                Jogador *jogador;
                NSLog(@"Teste %lu",[fila count]);
                for(int i = 0; i < [fila count]; i++)
                {
                    
                    jogador = [fila objectAtIndex:i];
                    if([jogador nomeJogador] == fNome)
                    {
                        if([jogador senha] == fSenha)
                        {
                            NSLog(@"Login feito com sucesso.");
                            jogadorAtual = jogador;
                            jogadorAtual.pontuacao = 0;
                            menu = false;
                        }
                    }
                }
                if(menu == true)
                {
                    NSLog(@"Dados errados.");
                }
            }
        }
        
        NSLog(@"Atenção, digite a sequência de cores em número para jogar. \n 1- Vermelho \n 2- Verde \n 3- Amarelo \n 4- Azul");
        
        BOOL vencer = true;
        
        do {
            [g mostrarCores ];
            if ([g lerCores]) {
                g.nivel++;
                NSLog(@"Parabéns, você passou de nível!! Nível atual: %i", g.nivel);
                jogadorAtual.pontuacao += 10;
                usleep(4000000);
            } else {
                vencer = false;
                NSLog(@"Você perdeu!");
                usleep(4000000);
                [self ranking];
                usleep(4000000);
                [g limpar];
            }
        } while (vencer);
        
    }
    
    
   
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
