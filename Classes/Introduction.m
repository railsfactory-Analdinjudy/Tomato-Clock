//
//  Introduction.m
//  TomatoClock
//
//  Created by GangeyaKumar on 07/01/10.
//  Copyright 2010 Sedin. All rights reserved.
//

#import "Introduction.h"
#import "Tomatoview.h"

@implementation Introduction
@synthesize activityIndicator,tomatoview,window,timer1;

/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/



- (void)viewDidLoad {
	// [super viewDidLoad];
	printf("Load");
	[activityIndicator startAnimating];
	[super viewDidLoad];
}	

-(void) Displayview
{
	printf("Displayview");	
	Tomatoview *temp1 = [[Tomatoview alloc] initWithNibName:@"Tomatoview" bundle:nil];
	self.tomatoview = temp1;
	[temp1 release];
	[self.view addSubview:self.tomatoview.view];
	[window makeKeyAndVisible];	
		
}



-(void)showSplash
{   printf("showSplash");
  
    [self performSelector:@selector(Displayview) withObject:nil afterDelay:5.0];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end
