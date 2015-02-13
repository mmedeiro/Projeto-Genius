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





-(void) mostrarCores{
    perdeu = false;
    for (int r=0;r<nivel+3; r++) {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores addObject: cores];
        NSTimer *timer = [[NSTimer alloc] init];
    }
    
    BOOL mostrando = true;
    while(mostrando)
    {
     
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

