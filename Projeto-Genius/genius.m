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



@synthesize nivel, armazenarCores,perdeu;



-(instancetype) init
{
    nivel = 0;
    armazenarCores = [[NSMutableArray alloc] init];
    perdeu = false;
    return self;
}

-(void) mostrarCores{
    perdeu = false;
    for (int r=0;r<nivel+3; r++) {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores addObject: cores];
        NSTimer *timer = [[NSTimer alloc] init];
    }
    
    NSNumber *numero;
    for(int i = 0; i < [armazenarCores count]; i++)
    {
        numero = [armazenarCores objectAtIndex:i];
        int number = [numero intValue];
        switch(number)
        {
            case 0:
                NSLog(@"Vermelho");
            
            case 1:
                NSLog(@"Verde");
            case 2:
                NSLog(@"Amarelo");
            case 3:
                NSLog(@"Azul");
        }
        
        usleep(1000000);
        
    }

    
    
}



-(void) lerCores{
    NSNumber *numero = armazenarCores[0];
    int entrada;
    for(int i = 0; i < [armazenarCores count]; i++)
    {
     NSLog(@"Digite a combinação correta %i/%i: ",i,nivel+3);
     scanf("%i",&entrada);
     numero = armazenarCores[i];
     if([numero isEqual:[NSNumber numberWithInt:entrada]])
     {
      continue;
         NSLog(@"Você acertou!");
         
     }
     else
     {
      NSLog(@"Você perdeu!");
         perdeu = true;
         return;
     }
     
    }
}



@end

