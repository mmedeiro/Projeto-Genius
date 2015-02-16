//
//  UI_Menu.h
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MyWindow;
@interface UI_Menu : NSViewController
{
    MyWindow *hWindow;
}

@property IBOutlet NSTextField *usuario;
@property IBOutlet NSTextField *senha;

-(instancetype) initWithWindow:(MyWindow *)nWindow title:(NSString *)text;
-(IBAction) regAction:(id)sender;
-(IBAction) loginAction:(id)sender;
-(IBAction) rankingAction:(id)sender;

@end
