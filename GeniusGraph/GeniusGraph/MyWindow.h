//
//  MyWindow.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "UI_Menu.h"
#import "UI_Register.h"
#import "UI_Ranking.h"
#import "UI_Game.h"
#import "Jogador.h"

@interface MyWindow : NSWindowController
{
    IBOutlet NSView *myTargetView; // the host view
}

@property (nonatomic, assign) NSViewController *myCurrentViewController;
@property (nonatomic, strong) UI_Menu *menuView;
@property (nonatomic, strong) UI_Register *registerView;
@property (nonatomic, strong) UI_Ranking *rankingView;
@property (nonatomic, strong) UI_Game *gameView;
@property NSMutableArray *listaJogadores;
@property BOOL updateRank;
@property BOOL updateGame;
@property BOOL gameRunning;
@property BOOL recreateGame;
@property Jogador *jogadorAtual;


- (void)changeViewController:(NSInteger)whichViewTag;
- (NSViewController *)viewController;
- (void) createPopup:(NSString *)message;

@end
