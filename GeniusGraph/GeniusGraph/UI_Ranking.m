//
//  UI_Ranking.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "UI_Ranking.h"
#import "MyWindow.h"
#import "Jogador.h"

@class MyWindow;
@interface UI_Ranking ()

@end

@implementation UI_Ranking
@synthesize posicao1,posicao2,posicao3,posicao4,posicao5;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text
{
    self = [super initWithNibName:text bundle:nil];
    hWindow = nWindow;
    return self;
}

- (void)awakeFromNib
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void) loadRanking
{
    if ([hWindow.listaJogadores count] == 0)
    {
        return;
    }
    
    NSMutableArray *unsortedJ = [[NSMutableArray alloc] initWithArray:hWindow.listaJogadores];
    NSMutableArray *rank = [[NSMutableArray alloc] init];
    Jogador *aux;
    
    for (int i=0; i<[unsortedJ count]; i++)
    {
        if([rank count] >= 5)
        {
            break;
        }
        
        int maior = -1;
        for(int j = 0; j < [unsortedJ count]; j++)
        {
            if([[unsortedJ objectAtIndex:j] pontos] > maior)
            {
                aux = [unsortedJ objectAtIndex:j];
                maior =[aux pontos];
            }
        }
        
        switch (i)
        {
            case 0:
            {
                NSString *pos = [NSString stringWithFormat:@"1-%@ : %i pts.",[aux user],[aux pontos]];
                [posicao1 setStringValue:pos];
                [unsortedJ removeObject:aux];
                break;
            }
                
            case 1:
            {
                NSString *pos = [NSString stringWithFormat:@"2-%@ : %i pts.",[aux user],[aux pontos]];
                [posicao2 setStringValue:pos];
                [unsortedJ removeObject:aux];
                break;
            }
                
            case 2:
            {
                NSString *pos = [NSString stringWithFormat:@"3-%@ : %i pts.",[aux user],[aux pontos]];
                [posicao3 setStringValue:pos];
                [unsortedJ removeObject:aux];
                break;
            }
                
            case 3:
            {
                NSString *pos = [NSString stringWithFormat:@"4-%@ : %i pts.",[aux user],[aux pontos]];
                [posicao4 setStringValue:pos];
                [unsortedJ removeObject:aux];
                break;
            }
                
            case 4:
            {
                NSString *pos = [NSString stringWithFormat:@"5-%@ : %i pts.",[aux user],[aux pontos]];
                [posicao5 setStringValue:pos];
                [unsortedJ removeObject:aux];
                break;
            }
        }
    }
}

-(IBAction) voltarAction:(id)sender
{
    hWindow.updateRank = true;
    [hWindow changeViewController:0];
}

@end
