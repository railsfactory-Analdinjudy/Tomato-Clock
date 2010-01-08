//
//  TomatoClockAppDelegate.m
//  TomatoClock
//
//  Created by GangeyaKumar on 23/12/09.
//  Copyright Sedin 2009. All rights reserved.
//

#import "TomatoClockAppDelegate.h"
#import"Introduction.h"
#import"Tomatoview.h"
@implementation TomatoClockAppDelegate

@synthesize window,introduction,tomatoview;


- (void)applicationDidFinishLaunching:(UIApplication *)application 

{    
	
	
	
	Introduction *temp = [[Introduction alloc] initWithNibName:@"Introduction" bundle:nil];
	self.introduction = temp;
	[introduction showSplash];
	[temp release];
	[window addSubview:self.introduction.view];
	[window makeKeyAndVisible];
	
	
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
	
}

@end
