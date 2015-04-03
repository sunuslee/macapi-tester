//
//  AppDelegate.h
//  apitest-mac
//
//  Created by Sunus on 2/4/15.
//  Copyright (c) 2015 alibaba. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


//@property (retain,  atomic) id descriptionn __attribute__ ((deprecated("use objectDescription instead")));
//- (void)testAPi NS_AVAILABLE_MAC(10_9);
-(void) testAPi __attribute__((deprecated("API is newer than Deployment Target.")));
-(void) f __attribute__((availability(macosx,introduced=10.4,deprecated=10.6)));
- (void)beginCriticalSheet:(NSWindow *)sheetWindow completionHandler:(void (^)(NSModalResponse returnCode))handler NS_AVAILABLE_MAC(10_9);

@end

