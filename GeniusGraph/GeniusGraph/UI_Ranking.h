//
//  UI_Ranking.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MyWindow;
@interface UI_Ranking : NSViewController
{
    MyWindow *hWindow;
}

@property IBOutlet NSTextField *posicao1;
@property IBOutlet NSTextField *posicao2;
@property IBOutlet NSTextField *posicao3;
@property IBOutlet NSTextField *posicao4;
@property IBOutlet NSTextField *posicao5;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text;
-(void) loadRanking;
-(IBAction) voltarAction:(id)sender;

@end
