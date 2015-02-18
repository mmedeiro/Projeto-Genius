//

//  Genius.m

//  Genius

//

//  Created by Mariana Medeiro on 13/02/15.

//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.

//



#import "Genius.h"
#import <stdlib.h>


@implementation Genius



@synthesize nivel, armazenarCores,listaLer;



-(instancetype) init
{
    nivel = 0;
    armazenarCores = [[Fila alloc] init];
    listaLer = [[Fila alloc] init];
    return self;
}

-(void) limpar
{
    armazenarCores = [[Fila alloc] init];
    listaLer = [[Fila alloc] init];
    nivel = 0;
}

-(void) mostrarCores{

    for (int r=0;r<nivel+3; r++)
    {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores enfileirar:cores];
    }
    
    
    NSNumber *numero;
    while([armazenarCores tamanho] > 0)
    {
        numero = [armazenarCores ler];
        [listaLer enfileirar:numero];
        [armazenarCores desenfileirar];
        int number = [numero intValue];
        NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        switch(number)
        {
            case 0:
                NSLog(@"Vermelho");
                break;
            
            case 1:
                NSLog(@"Verde");
                break;
                
            case 2:
                NSLog(@"Amarelo");
                break;
                
            case 3:
                NSLog(@"Azul");
                break;
        }
        
        usleep(2000000);
        
    }
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    
    
}

-(BOOL) lerCores{
    NSNumber *numero = [listaLer ler];
    NSLog(@"Log : %i",[listaLer tamanho]);
    int entrada;
    while([listaLer tamanho] > 0)
    {
        NSLog(@"Digite a combinação correta: \n 1- Vermelho 2- Verde 3- Amarelo 4- Azul");
        scanf("%i",&entrada);
        numero = [listaLer ler];
        [listaLer desenfileirar];
        if([numero isEqual:[NSNumber numberWithInt:(entrada -1)]])
        {
            NSLog(@"Acertou!");
        }
        else
        {
            return false;;
        }
    }
    return true;
}



@end

