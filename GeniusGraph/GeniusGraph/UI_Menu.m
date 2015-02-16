//
//  UI_Menu.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "UI_Menu.h"
#import "MyWindow.h"
#import "Jogador.h"

@interface UI_Menu ()

@end

@implementation UI_Menu
@synthesize usuario,senha;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text
{
   self = [super initWithNibName:text bundle:nil];
    hWindow = nWindow;
   return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Titulo";
}


-(IBAction) loginAction:(id)sender
{
    if([usuario stringValue].length > 0)
    {
        if([senha stringValue].length > 0)
        {
            
            for(int i = 0; i <[hWindow.listaJogadores count];i++)
            {
                Jogador *nJogador = [hWindow.listaJogadores objectAtIndex:i];
             if(nJogador.user == [usuario stringValue] && nJogador.senha == [senha stringValue])
             {
                 hWindow.jogadorAtual = nJogador;
                 [hWindow changeViewController:3];
                 return;
             }
            }
        }
    }
    [hWindow createPopup:@"Algum dado foi inserido de forma errada, rever campos."];
}


-(IBAction) regAction:(id)sender
{
    [hWindow changeViewController:1];
}


-(IBAction) rankingAction:(id)sender
{
    [hWindow changeViewController:2];
}

@end
