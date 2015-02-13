@@ -1,37 +0,0 @@
//

//  Genius.h

//  Genius

//

//  Created by Mariana Medeiro on 13/02/15.

//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.

//


#import <Foundation/Foundation.h>

@interface Genius : NSObject

{
    
    int nivel;
    NSMutableArray *armazenarCores;
    
}



@property int nivel;
@property NSMutableArray *armazenarCores;
@property BOOL perdeu;

-(void) mostrarCores;
-(void) lerCores;

@end

