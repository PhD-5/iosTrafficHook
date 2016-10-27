#import "CustomURLProtocol.h"

%hook AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //注册protocol
    [NSURLProtocol registerClass:[CustomURLProtocol class]];
    return %orig;
}

- (void)applicationWillTerminate:(UIApplication *)application{
    SocketClass *socket = [[SocketClass alloc] init];
    [socket SendSocket:@"DONE"];
    return %orig;
}
%end