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





-(void) mostrarCores{
    for (int r=0;r<nivel+3; r++) {
        NSNumber *cores = [ NSNumber numberWithInt: arc4random_uniform(3)];
        [armazenarCores addObject: cores];
    }

    
    
}



-(void) lerCores{
    NSLog(@"Digite a combinação correta: ");
    
}



@end

