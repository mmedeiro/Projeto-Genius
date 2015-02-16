//
//  AppDelegate.m
//  GeniusGraph
//
//  Created by João Vitor dos Santos Schimmelpfeng on 15/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "AppDelegate.h"
#import "MyWindow.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (IBAction)newDocument:(id)sender
{
    if (myWindow == nil)
    {
        myWindow = [[MyWindow alloc] initWithWindowNibName:@"UI_Window"];
    }
    [myWindow showWindow:self];
}

- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
    [self newDocument:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)validateMenuItem:(NSMenuItem *)theMenuItem
{
    BOOL enable = [self respondsToSelector:[theMenuItem action]];
    
    // disable "New" if the window is already up
    if ([theMenuItem action] == @selector(newDocument:))
    {
        if ([[myWindow window] isKeyWindow])
        {
            enable = NO;
        }
    }
    return enable;
}

@end
