//
//  MyWindow.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "MyWindow.h"


@interface MyWindow ()

@end

@implementation MyWindow
@synthesize myCurrentViewController,listaJogadores,updateRank,updateGame,gameRunning,jogadorAtual,recreateGame;

enum
{
 kMenu = 0,
 kRegistro,
 kRanking,
 kGame
};

NSString *const kMenuName = @"UI_Menu";
NSString *const kRegisterName = @"UI_Register";
NSString *const kRankingName = @"UI_Ranking";
NSString *const kGameName = @"UI_Game";

- (void)windowDidLoad
{
    [super windowDidLoad];
}

- (void)awakeFromNib
{
    listaJogadores = [[NSMutableArray alloc] init];
    updateRank = true;
    updateGame = false;
    gameRunning = false;
    recreateGame = false;
    [self changeViewController:kMenu];
    
}

- (void)changeViewController:(NSInteger)whichViewTag
{
    [self willChangeValueForKey:@"viewController"];
    
    if ([self.myCurrentViewController view] != nil)
    {
        [[self.myCurrentViewController view] removeFromSuperview];	// remove the current view
    }
    
    switch (whichViewTag)
    {
        case kMenu:
        {
            if (self.menuView == nil)
            {
                _menuView = [[UI_Menu alloc] initWithWindow:self title:kMenuName];
            }
            
            myCurrentViewController = self.menuView;
            [self.myCurrentViewController setTitle:kMenuName];
            
            break;
        }
            
        case kRegistro:
        {
            _registerView = [[UI_Register alloc] initWithWindow:self title:kRegisterName];
            myCurrentViewController = self.registerView;
            [self.myCurrentViewController setTitle:kRegisterName];
            
            break;
        }
            
        case kRanking:
        {
            if (self.rankingView == nil)
            {
                _rankingView = [[UI_Ranking alloc] initWithWindow:self title:kRankingName];
            }
            
            myCurrentViewController = self.rankingView;
            [self.myCurrentViewController setTitle:kRankingName];
            [self.rankingView loadRanking];
            if(updateRank)
            {
                updateRank = false;
                [self changeViewController:kRanking];
            }
            break;
        }
            
        case kGame:
        {
            if (self.gameView == nil || recreateGame)
            {
                _gameView = [[UI_Game alloc] initWithWindow:self title:kGameName];
                recreateGame = false;
            }
            
            myCurrentViewController = self.gameView;
            [self.myCurrentViewController setTitle:kGameName];
            break;
        }
    }
    
    [myTargetView addSubview:[self.myCurrentViewController view]];
    
    [[self.myCurrentViewController view] setFrame:[myTargetView bounds]];
    
    [self.myCurrentViewController setRepresentedObject:[NSNumber numberWithUnsignedInteger:[[[self.myCurrentViewController view] subviews] count]]];
    
    [self didChangeValueForKey:@"viewController"];
}

- (NSViewController *)viewController
{
    return self.myCurrentViewController;
}

- (void) createPopup:(NSString *)message
{
 NSAlert *alerta = [[NSAlert alloc] init];
    [alerta setMessageText:message];
    [alerta runModal];
}

@end
