//
//  About.m
//  TomatoClock
//
//  Created by GangeyaKumar on 07/01/10.
//  Copyright 2010 Sedin. All rights reserved.
//

#import "About.h"
#import"Tomatoview.h"


@implementation About
@synthesize tomatoview,window;

/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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

-(IBAction) Back
{
	Tomatoview *temp1 = [[Tomatoview alloc] initWithNibName:@"Tomatoview" bundle:nil];
	self.tomatoview = temp1;
	[temp1 release];
	[self.view addSubview:self.tomatoview.view];
	[window makeKeyAndVisible];
}

@end
