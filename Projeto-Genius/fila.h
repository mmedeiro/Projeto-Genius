//
//  Fila.h
//  Genius
//
//  Created by Samuel Shin Kim on 06/02/15.
//  Copyright (c) 2015 Samuel Shin Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fila : NSObject {
    NSMutableArray *elementos;
}

-(void) enfileirar:(NSObject*)elemento;
-(void) desenfileirar;
-(NSObject*) ler;
-(BOOL) vazio;
-(int) tamanho;
-(void) esvaziar;

@end
