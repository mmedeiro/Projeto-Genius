//

//  Jogador.h

//  Genius

//

//  Created by Mariana Medeiro on 13/02/15.

//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.

//



#import <Foundation/Foundation.h>





@interface Jogador : NSObject

{
    
    int codigo;
    
    NSString *nomeJogador;
    
    NSString *senha;
    
    int pontuacao;
    
    int quantidadeDeJogos;
    
}



@property int codigo, pontuacao, quantidadeDeJogos;

@property NSString *nomeJogador;

@property NSString *senha;











@end

