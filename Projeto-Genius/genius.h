//

//  Genius.h

//  Genius

//

//  Created by Mariana Medeiro on 13/02/15.

//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.

//


#import <Foundation/Foundation.h>

@interface Genius : NSObject



@property int nivel;
@property NSMutableArray *armazenarCores;
@property BOOL perdeu;

-(instancetype) init;
-(void) mostrarCores;
-(void) lerCores;

@end

