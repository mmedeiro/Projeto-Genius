//
//  UI_Game.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 16/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Fila.h"

@class MyWindow;
@interface UI_Game : NSViewController
{
    MyWindow *hWindow;
}

@property Fila *listaCores;
@property Fila *listaCheck;
@property int nivel;
@property BOOL mostrandoCores;
@property BOOL escolhendoCores;
@property IBOutlet NSImageView *azul;
@property IBOutlet NSImageView *verde;
@property IBOutlet NSImageView *amarelo;
@property IBOutlet NSImageView *vermelho;
@property IBOutlet NSButton *comecar;
@property IBOutlet NSButton *btAzul;
@property IBOutlet NSButton *btVerde;
@property IBOutlet NSButton *btAmarelo;
@property IBOutlet NSButton *btVermelho;
@property IBOutlet NSTextField *nomeJogador;
@property IBOutlet NSTextField *nivelAtual;
@property IBOutlet NSTextField *jogadorPontos;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text;
-(IBAction)comecar:(id)sender;
-(IBAction) clickAzul:(id)sender;
-(IBAction) clickVerde:(id)sender;
-(IBAction) clickVermelho:(id)sender;
-(IBAction) clickAmarelo:(id)sender;
-(void) mostrarImagem;
-(void) selectorTempo;
-(void) passouDeNivel;
-(void) gameOver;

@end
