//
//  AppDelegate.m
//  apitest-mac
//
//  Created by Sunus on 2/4/15.
//  Copyright (c) 2015 alibaba. All rights reserved.
//


#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;


@end

@implementation AppDelegate

-(void) ff
{
    NSLog(@"ff test");
}

- (void)f
{
    NSLog(@"f test");
}

- (void)testAPi
{
    NSLog(@"Testing API");
}

- (void)beginCriticalSheet:(NSWindow *)sheetWindow completionHandler:(void (^)(NSModalResponse))handler
{
    NSWindow *t = [[NSWindow alloc] init];
    [t beginCriticalSheet:sheetWindow completionHandler:handler];
}
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self testAPi];
    NSWindow *testWindow = [[NSWindow alloc] init];
    [testWindow convertBaseToScreen:(CGPoint){0,0}];
    [self beginCriticalSheet:self.window completionHandler:nil];
    [testWindow beginCriticalSheet:self.window completionHandler:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
