//
//  UI_Register.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "UI_Register.h"
#import "Jogador.h"
#import "MyWindow.h"

@interface UI_Register ()

@end

@class MyWindow;
@implementation UI_Register
@synthesize usuario,senha;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text
{
    self = [super initWithNibName:text bundle:nil];
    hWindow = nWindow;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(IBAction) registrarAction:(id)sender
{
 if([usuario stringValue].length > 0)
 {
  if([senha stringValue].length > 0)
  {
      Jogador *novoJogador = [[Jogador alloc] initJogador:[usuario stringValue] senha:[senha stringValue]];
      [hWindow.listaJogadores addObject:novoJogador];
      [hWindow createPopup:@"Conta criada com sucesso!"];
      [hWindow changeViewController:0];
      return;
  }
 }
    [hWindow createPopup:@"Algum dado foi inserido de forma errada, rever campos."];
}

-(IBAction) voltarAction:(id)sender
{
    [hWindow changeViewController:0];
}

@end
