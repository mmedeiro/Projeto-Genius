//
//  Fila.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fila : NSObject {
    NSMutableArray *elementos;
}

-(void) enfileirar:(NSObject*)elemento;
-(void) desenfileirar;
-(NSObject*) ler;
-(int) tamanho;
-(void) esvaziar;
-(BOOL) vazio;

@end
