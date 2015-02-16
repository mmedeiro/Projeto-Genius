//
//  UI_Game.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 16/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "UI_Game.h"
#import "MyWindow.h"

@interface UI_Game ()

@end

@class MyWindow;
@implementation UI_Game
@synthesize listaCores,nivel,listaCheck,mostrandoCores,escolhendoCores,azul,verde,amarelo,vermelho,comecar,btAzul,btVerde,btVermelho,btAmarelo,nomeJogador,nivelAtual,jogadorPontos;

NSImage *darkBlue;
NSImage *darkGreen;
NSImage *darkYellow;
NSImage *darkRed;
NSImage *lightBlue;
NSImage *lightGreen;
NSImage *lightYellow;
NSImage *lightRed;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text
{
    self = [super initWithNibName:text bundle:nil];
    hWindow = nWindow;
    listaCores =[[Fila alloc] init];
    NSNumber *cor = [ NSNumber numberWithInt: arc4random_uniform(4)];
    [listaCores enfileirar:cor];
    
    listaCheck = [[Fila alloc] init];
    self.nivel = 0;
    
    [nomeJogador setStringValue:[NSString stringWithFormat:@"Jogador: %@",hWindow.jogadorAtual.user]];
    
    [nomeJogador setStringValue:[NSString stringWithFormat:@"Nivel: %i",nivel]];
    [jogadorPontos setStringValue:[NSString stringWithFormat:@"Nivel: %i",hWindow.jogadorAtual.pontos]];
    
    darkBlue = [NSImage imageNamed:@"geniusDBlue.jpg"];
    darkGreen = [NSImage imageNamed:@"geniusDGreen.jpg"];
    darkYellow = [NSImage imageNamed:@"geniusDYellow.jpg"];
    darkRed = [NSImage imageNamed:@"geniusDRed.jpg"];
    
    lightBlue = [NSImage imageNamed:@"geniusKBlue.jpg"];
    lightGreen = [NSImage imageNamed:@"geniusKGreen.jpg"];
    lightYellow = [NSImage imageNamed:@"geniusKYellow.jpg"];
    lightRed = [NSImage imageNamed:@"geniusKRed.jpg"];
    
    mostrandoCores = false;
    escolhendoCores = false;
    
    return self;
}

-(IBAction)comecar:(id)sender
{
    if(escolhendoCores || mostrandoCores)
    {
     return;
    }
    else
    {
     [self mostrarImagem];
    }
}

-(void) mostrarImagem
{
    mostrandoCores = true;
    [comecar setTitle:@"Aguarde"];
    
    if([listaCores tamanho] == 0)
    {
        mostrandoCores = false;
        escolhendoCores = true;
        
        [btAzul setTitle:@"Azul"];
        [btVerde setTitle:@"Verde"];
        [btAmarelo setTitle:@"Amarelo"];
        [btVermelho setTitle:@"Vermelho"];
        
        return;
    }
    
    NSNumber *numero;
    numero = [listaCores ler];
    [listaCheck enfileirar:[listaCores ler]];
    [listaCores desenfileirar];
        int number = [numero intValue];
        
        switch(number)
        {
            case 0:
            {
                [azul setImage:lightBlue];
                break;
            }
                
            case 1:
            {
                [verde setImage:lightGreen];
                break;
            }
            case 2:
            {
                [vermelho setImage:lightRed];
                break;
            }
            case 3:
            {
                [amarelo setImage:lightYellow];
                break;
            }
        }
        
        [hWindow changeViewController:3];
        [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(selectorTempo) userInfo:nil repeats:NO];
    
}

-(void) passouDeNivel
{
    nivel++;
    [comecar setTitle:@"Começar"];
    [btAzul setTitle:@"Aguarde"];
    [btAmarelo setTitle:@"Aguarde"];
    [btVermelho setTitle:@"Aguarde"];
    [btVerde setTitle:@"Aguarde"];
    mostrandoCores = false;
    escolhendoCores = false;
    hWindow.jogadorAtual.pontos += 100;
    for(int i = 0; i < nivel+2; i++)
    {
     NSNumber *cor = [ NSNumber numberWithInt: arc4random_uniform(4)];
     [listaCores enfileirar:cor];
    }
    [nivelAtual setStringValue:[NSString stringWithFormat:@"Nivel: %i",nivel]];
    [jogadorPontos setStringValue:[NSString stringWithFormat:@"Nivel: %i",hWindow.jogadorAtual.pontos]];
    [nomeJogador setStringValue:[NSString stringWithFormat:@"Jogador: %@",hWindow.jogadorAtual.user]];
    
    [hWindow createPopup:@"Você passou de nivel!"];
    [hWindow changeViewController:3];
}

-(void) selectorTempo
{
    [azul setImage:darkBlue];
    [verde setImage:darkGreen];
    [amarelo setImage:darkYellow];
    [vermelho setImage:darkRed];
    [hWindow changeViewController:3];
    [self mostrarImagem];
}

-(IBAction) clickAzul:(id)sender
{
 if(!escolhendoCores)
 {
     return;
 }
    
    NSNumber *numero = [listaCheck ler];
    
 if([numero intValue] == 0)
 {
  [listaCheck desenfileirar];
 }
 else
 {
     [self gameOver];
 }
    
    if([listaCheck tamanho] == 0)
    {
        [self passouDeNivel];
        return;
    }
}

-(IBAction) clickVerde:(id)sender
{
    if(!escolhendoCores)
    {
        return;
    }
    
    NSNumber *numero = [listaCheck ler];
    
 if([numero intValue] == 1)
 {
    [listaCheck desenfileirar];
 }
 else
 {
     [self gameOver];
 }
    
    if([listaCheck tamanho] == 0)
    {
        [self passouDeNivel];
        return;
    }
}

-(IBAction) clickVermelho:(id)sender
{
    if(!escolhendoCores)
    {
        return;
    }
    NSNumber *numero = [listaCheck ler];
    
 if([numero intValue]  == 2)
 {
    [listaCheck desenfileirar];
 }
 else
 {
     [self gameOver];
 }
    
    if([listaCheck tamanho] == 0)
    {
        [self passouDeNivel];
        return;
    }
}

-(IBAction) clickAmarelo:(id)sender
{
    if(!escolhendoCores)
    {
        return;
    }
    
    NSNumber *numero = [listaCheck ler];
    
    if([numero intValue] == 3)
    {
        [listaCheck desenfileirar];
    }
    else
    {
        [self gameOver];
    }
    
    if([listaCheck tamanho] == 0)
    {
        [self passouDeNivel];
        return;
    }
}

-(void) gameOver
{
    [hWindow createPopup:@"Você Perdeu!"];
    nivel = 0;
    hWindow.jogadorAtual.pontos = 0;
    [listaCheck esvaziar];
    [listaCores esvaziar];
    mostrandoCores = false;
    escolhendoCores = false;
    [comecar setTitle:@"Começar"];
    [btAzul setTitle:@"Aguarde"];
    [btAmarelo setTitle:@"Aguarde"];
    [btVermelho setTitle:@"Aguarde"];
    [btVerde setTitle:@"Aguarde"];
    hWindow.recreateGame = true;
    [hWindow changeViewController:2];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end