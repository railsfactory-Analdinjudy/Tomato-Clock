//
//  TomatoClockAppDelegate.m
//  TomatoClock
//
//  Created by GangeyaKumar on 23/12/09.
//  Copyright Sedin 2009. All rights reserved.
//

#import "TomatoClockAppDelegate.h"
#import"Tomatoview.h"
@implementation TomatoClockAppDelegate

@synthesize window,tomatoview;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	
	Tomatoview *temp = [[Tomatoview alloc] initWithNibName:@"Tomatoview" bundle:nil];
	self.tomatoview = temp;
	[temp release];
	[window addSubview:self.tomatoview.view];
	[window makeKeyAndVisible];
   
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
/*	Tomatoview *temp = [[Tomatoview alloc] initWithNibName:@"Tomatoview" bundle:nil];
	printf("Terminate");
	sqlite3_close(temp.tomato_db);*/
}
@end
