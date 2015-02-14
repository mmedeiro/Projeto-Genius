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



@synthesize nivel, armazenarCores;



-(instancetype) init
{
    nivel = 0;
    armazenarCores = [[NSMutableArray alloc] init];
    return self;
}

-(void) limpar
{
    armazenarCores = [[NSMutableArray alloc] init];
    nivel = 0;
}

-(void) mostrarCores{
    
    if([armazenarCores count] < 1)
    {
     for (int r=0;r<nivel+3; r++)
     {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores addObject: cores];
     }
    }
    else
    {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores addObject: cores];
    }
    
    NSNumber *numero;
    for(int i = 0; i < [armazenarCores count]; i++)
    {
        numero = [armazenarCores objectAtIndex:i];
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
    NSNumber *numero = armazenarCores[0];
    int entrada;
    for(int i = 0; i < [armazenarCores count]; i++)
    {
        NSLog(@"Digite a combinação correta %i/%i: \n 1- Vermelho 2- Verde 3- Amarelo 4- Azul",i,nivel+3);
        scanf("%i",&entrada);
        numero = armazenarCores[i];
        if([numero isEqual:[NSNumber numberWithInt:(entrada -1)]])
        {
            NSLog(@"Acertou!");
            continue;
        }
        else
        {
            return false;;
        }
    }
    return true;
}



@end

