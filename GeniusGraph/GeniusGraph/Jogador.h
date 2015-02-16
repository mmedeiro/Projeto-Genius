//
//  Jogador.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject

@property NSString *user;
@property NSString *senha;
@property int pontos;

-(instancetype) initJogador:(NSString *)nUser senha:(NSString *)nSenha;

@end
