//

//  Genius.h

//  Genius

//

//  Created by Mariana Medeiro on 13/02/15.

//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.

//


#import <Foundation/Foundation.h>
#import "Fila.h"


@interface Genius : NSObject



@property int nivel;
@property Fila *armazenarCores;
@property Fila *listaLer;

-(instancetype) init;
-(void) limpar;
-(void) mostrarCores;
-(BOOL) lerCores;

@end

