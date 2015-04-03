# macapi-tester
mac-api-test

* base sdk: 10.10

* deployment_target: 10.7

i user macro in ```checker.ch``` to check api availability

i want to check the method from

__NSWindow__

    - (void)beginCriticalSheet:(NSWindow *)sheetWindow completionHandler:(void (^)(NSModalResponse returnCode))handler NS_AVAILABLE_MAC(10_9);

we can tell that the method is available from OS X 10.9.

but, in my appDelegate:

my methods

	[self testAPi];
    [self beginCriticalSheet:self.window completionHandler:nil];
    
gets the proper warning __API is newer than Deployment Target.__

but the one from system header:

	NSWindow *testWindow = [[NSWindow alloc] init];
	[testWindow beginCriticalSheet:self.window completionHandler:nil];

didn't give me any warnings.


__so, how can i get the warnings for__

    -[NSWindow beginCriticalSheet:(NSWindow *)sheetWindow completionHandler:(void (^)(NSModalResponse returnCode))handler]