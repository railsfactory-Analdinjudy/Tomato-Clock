//
//  Tomatoview.m
//  TomatoClock
//
//  Created by GangeyaKumar on 23/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import "Tomatoview.h"
#import"stdlib.h"
//#import <sqlite3.h>
#import<AudioToolbox/AudioServices.h>
#import"TomatoClockAppDelegate.h"
#import"About.h"
//#import "TomatoList.h"

@implementation Tomatoview

@synthesize lbltimer,btnpause,btnstart,timer,clappingFileID,btnreset,btnplay,clappingFileID1,tomatoarray,mydate
,comments,tomatoapp,window,selected,txtfld1,timer1,timer2,timer3,timer10,timer11,imageview1,btncheck,btncheck1
,about,tomatoview;


BOOL isTimerTicking = TRUE;
BOOL isPlayaudio1 =TRUE;
BOOL isPlayaudio2 =TRUE;
BOOL isStart = TRUE;
int numTimerTicks=6;
int a=10;
int times;
int id1=1,count1=10;
BOOL isCount=FALSE;
BOOL isCount1=FALSE;
BOOL issecondplay=FALSE;
BOOL checked =FALSE;
BOOL loop =FALSE;
BOOL reset= FALSE;
BOOL Start =FALSE;
BOOL isPlay2 =FALSE;
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
- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
	//printf("Terminate");
	//sqlite3_close(tomato_db);
}


// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
	
	//[self ontimer];
	//[self updateLabel];
	
	[super viewDidLoad];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
	NSString *currentLanguage = [languages objectAtIndex:0];
	printf("Current Locale: %s", [[NSLocale currentLocale] localeIdentifier]);
	printf("Current language: %s", currentLanguage);
	//printf("Welcome Text: %s", NSLocalizedString(@"WelcomeKey", @""));
	
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




-(void)awakeFromNib {
	
	lbltimer.text=@"00";
	
}

//To display check box
-(IBAction) check
{   
	btncheck.hidden=TRUE;
	btncheck1.hidden =FALSE;
	checked = TRUE;
	
}


//To display check box
-(IBAction) uncheck
{
	checked = FALSE;
	btncheck.hidden =FALSE;
	btncheck1.hidden =TRUE;
	
}




//Start button pressed
//increment the timer
- (IBAction)start {
	UIImage* img1 = [UIImage imageNamed:@"Meet.png"];
	Start =TRUE;
	imageview1.image=img1;
	btncheck.enabled=FALSE;
	btncheck1.enabled=FALSE;
	isPlayaudio1 =TRUE;
	issecondplay=FALSE;
	isPlay2 =FALSE;
	printf("start............. \n");
	btnstart.hidden =TRUE;
	btnpause.hidden=FALSE;
	btnpause.enabled=TRUE;
	btnreset.enabled=TRUE;
	//btnreset.hidden =FALSE;
	
	if(isTimerTicking)
	{	
		printf("Timer Tick");
		if(isCount==FALSE)
		{
			[timer2 invalidate];
			//[timer3 invalidate];
        }
		
		times = 25.0;
		timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (countDown) userInfo:nil repeats:YES];
		//timer1 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (ontimer) userInfo:nil repeats:YES];
		
		
		
	}
	
    
}






/*-(void) ontimer
 {      printf("\n........ontimer \n");
 if(isTimerTicking)
 {	
 printf("ontimer");
 
 detailsTimeFormatter = [[NSDateFormatter alloc] init];
 //[detailsTimeFormatter setDateStyle:NSDateFormatterMediumStyle];
 [detailsTimeFormatter setTimeStyle:NSDateFormatterMediumStyle];
 }	
 }	
 
 
 
 -(void) ontimer1
 {      printf("\n........ontimer1 \n");
 if(isTimerTicking)
 {	
 printf("ontimer1");
 
 detailsTimeFormatter = [[NSDateFormatter alloc] init];
 //[detailsTimeFormatter setDateStyle:NSDateFormatterMediumStyle];
 [detailsTimeFormatter setTimeStyle:NSDateFormatterMediumStyle];
 }	
 }	
 */


//increment the timer
//Reset button pressed
- (IBAction)reset {
	//Set the count in the textfield
	printf("Reset");
	Start = FALSE;
	UIImage* img1 = [UIImage imageNamed:@"Meet.png"];
	imageview1.image=img1;
	reset =TRUE;
	isTimerTicking =FALSE;
	//btnstart.hidden =FALSE;
	//btnreset.hidden =TRUE;
	//Playing audio
	isPlayaudio1 =TRUE;
	isTimerTicking=TRUE;
	issecondplay == TRUE;
	
	
	if(isPlayaudio1 ==TRUE)
	{
		printf("isPlayaudio1 ==TRUE");
		[timer invalidate];
	}	
		
/*	if(isPlay2 == FALSE)
	{	
	    printf("isPlay2 == FALSE"); 
		[timer invalidate];
		
	}	*/
	 if(isPlay2 == TRUE)
	{
		printf("isPlay2 == TRUE");
		[timer10 invalidate];	
	}	
	isPlay2 =FALSE;
	printf("Reset1111111111");	
	if (issecondplay == TRUE)
	{
		printf("issecondplay");	
		//[timer10 invalidate];
		
	}
	printf("Rest...........\n");
	
	if(isTimerTicking)
	{	
		
		printf("isTimerTicking");
		if(isCount1==FALSE)
		{
			printf("isCount1");
			[timer invalidate];
			[timer1 invalidate];
		}
		printf("Restsssssss...........\n");
		if(loop == TRUE)
		{	
			times = 25.0;
			loop = FALSE;
		}
		else
		{
			times=26.0;	
		}
		//[timer invalidate];
		//[timer1 invalidate];
		timer2 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (countDowns) userInfo:nil repeats:YES];
		//timer3 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (ontimer1) userInfo:nil repeats:YES];
	}
	
}


-(void)countDown {
	printf("countDownnnnnnnnnnnnn");
	printf("times =%d",times);
	times = times - 1;
	if (times == -1) {
		isCount1 = TRUE;
        if (issecondplay == TRUE)
		{
			[timer11 invalidate];
			
		}
		else
		{	
			
			[timer invalidate];
			//[timer1 invalidate];
		}
		[self playaudio1];
	}
	if(times >=0)
	{	
		[self updateLabel];
	}
}



//Reset calls
-(void)countDowns {
	printf("countDownsssssssssss");
	printf("times =%d",times);
	reset = TRUE;
	times = times - 1;
	if (times == -1) {
		isCount =TRUE;
		
		[timer2 invalidate];
		//[timer3 invalidate];
		
		[self playaudios];
	}
	if(times>=0)
	{	
		[self updateLabel];
	}	
	
}


-(void) play2 {
	printf("play222222222222222.......\n");
	printf("times =%d",times);
	times = times - 1;
	isPlay2 = TRUE;
	loop =FALSE;
	//isPlayaudio1 = FALSE;
	if (times == -1) {
		isCount =TRUE;
		printf("\n playaudio2..... \n");
		//sleep(7);
		[timer10 invalidate];
		/*[timer2 invalidate];
		 [timer3 invalidate];*/
		
		[self playaudio2];
	}
	if(times>=0 && issecondplay == TRUE)
	{	
		[self updateLabel];
	}	
	
}




-(void) play1{
	printf("play11111111111111111111 \n");
	printf("times =%d",times);
	times = times - 1;
	if (times == -1) {
		isCount =TRUE;
		printf("I am inside of play1111111111111");
		//sleep(7);
		[timer11 invalidate];
		/*[timer2 invalidate];
		 [timer3 invalidate];*/
		
		[self playaudio1];
	}
	if(times>=0 && issecondplay == TRUE)
	{	
		[self updateLabel];
	}	
	
}




//Set the value to the label
-(void) updateLabel {
	if(times>=10)
	{
		lbltimer.text = [NSString stringWithFormat:@"%i" , times];
	}
	else
	{
		lbltimer.text = [NSString stringWithFormat:"0"@"%i" , times];
		
	}	
	//lbltimer.text =[[detailsTimeFormatter stringFromDate:[NSDate date]] lowercaseString];
}


-(void) playaudio1
{
	printf("playaudio1");
	btnreset.enabled=FALSE;
	lbltimer.text = @"00";
	isPlayaudio1 =TRUE;
	isPlayaudio2=FALSE;
	isPlay2 =FALSE;
	loop =FALSE;
	NSString *clapPath = [[NSBundle mainBundle] pathForResource:@"clapping-crowd-studio-01" ofType:@"caf"];
	CFURLRef clapURL = (CFURLRef ) [NSURL fileURLWithPath:clapPath];
	AudioServicesCreateSystemSoundID (clapURL, &clappingFileID);
	AudioServicesPlaySystemSound(clappingFileID);
	[self mytime];
}	


-(void) playaudios
{   
	printf("playaudios");
	btnreset.enabled=FALSE;
	btnpause.enabled=FALSE;
	isPlayaudio1 =TRUE;
	isPlayaudio2=FALSE;
	isPlay2 =FALSE;
	loop=FALSE;
	NSString *clapPath = [[NSBundle mainBundle] pathForResource:@"clapping-crowd-studio-01" ofType:@"caf"];
	CFURLRef clapURL = (CFURLRef ) [NSURL fileURLWithPath:clapPath];
	AudioServicesCreateSystemSoundID (clapURL, &clappingFileID);
	AudioServicesPlaySystemSound(clappingFileID);
	//sleep(5);
	[self mytime];	
}	

-(void) playaudio2
{
	printf("playaudios");
	btnreset.enabled=FALSE;
	btnpause.enabled=FALSE;
	isPlayaudio1 =FALSE;
	isPlayaudio2=TRUE;
	//isPlay2 =FALSE;
	
	NSString *clapPath = [[NSBundle mainBundle] pathForResource:@"Start" ofType:@"caf"];
	CFURLRef clapURL = (CFURLRef ) [NSURL fileURLWithPath:clapPath];
	AudioServicesCreateSystemSoundID (clapURL, &clappingFileID);
	AudioServicesPlaySystemSound(clappingFileID);
	
	if(checked == TRUE)
	{	
		printf("checked");
		sleep(5);	
		loop =TRUE;	
		
		[self reset];
	}	
	else
	{   [timer10 invalidate];
		UIImage* img1 = [UIImage imageNamed:@"End.png"];
		imageview1.image=img1;
		btnreset.enabled=FALSE;
		btnstart.hidden=FALSE;
		btnpause.hidden=TRUE;
		btnplay.hidden=TRUE;
		lbltimer.text=@"25";
		btncheck.enabled=TRUE;
		btncheck1.enabled=TRUE;
		
	}
}	




//Play and Pause


-(IBAction) pause

{
	
	printf("pause");
	btncheck.enabled=TRUE;
	btncheck1.enabled=TRUE;
	btnplay.hidden =FALSE;
	btnpause.hidden =TRUE;
	btnreset.enabled=FALSE;
	
	
		
	if(isPlay2 == TRUE)
		
	{    printf("isPlay2 == TRUE");
		
		
		[timer10 invalidate];	
	 	
	}	
	else if(reset == FALSE)
	{
		printf("reset == FALSE");
		[timer invalidate];
		[timer2 invalidate];
	}	
	else if(reset == TRUE)
    {		
	  printf("reset == TRUE");
	  [timer2 invalidate];
	}
	
	else if (Start == TRUE)
	{    printf("Start == TRUE");
		[timer invalidate];
		
	}
	
	
	else if(isPlay2 == TRUE)
		
	{    printf("isPlay2 == TRUE");
		[timer10 invalidate];	
	 	
	}
	else if(isPlayaudio1 == TRUE)
	{
		
		[timer invalidate]; 	
	}	
	else
	{
	 printf("else");	
	 [timer invalidate];	
	}
		
	isTimerTicking =FALSE;
	if(isPlayaudio1 == TRUE)
	{	
		
		AudioServicesDisposeSystemSoundID(clappingFileID);
	}
	
	
	
}	

-(IBAction) play

{
	printf("play");
	btnplay.hidden =TRUE;
	btnpause.hidden =FALSE;
	isTimerTicking =TRUE;
	btnreset.enabled=TRUE;
	//NSString *mylbl = lbltimer.text;
	//NSNumber *times1 = [NSNumber numberWithInt:mylbl];
	
	//printf("Times1 = %i",times1);
	
	printf("\n times..........=%i\n",times);
	if(isPlay2 == TRUE)
	{
		timer10 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (play2) userInfo:nil repeats:YES];
	}
	
	else if(isPlayaudio1 == TRUE)
	{	
		timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (countDown) userInfo:nil repeats:YES];
	}
	else if(isPlayaudio1 == FALSE)
		
	{
	 timer2 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (countDowns) userInfo:nil repeats:YES];	
		
	}
	else
	{
	 printf("Done");	
	}
	
}	

//Start.caf
-(void) mytime
{
	isCount =FALSE;
	btnreset.enabled=TRUE;
	btnpause.enabled=TRUE;
	UIImage* img1 = [UIImage imageNamed:@"break.png"];
	imageview1.image=img1;
	printf("mytime................\n");
	issecondplay =TRUE;
  	if(isTimerTicking)
	{	 sleep(5);
		printf("Inside of mytime");
		times = 5.0;
		timer10 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (play2) userInfo:nil repeats:YES];
	}	
}


//Clap.caf
-(void) mytimes
{
	printf("mytime................\n");
	isCount =FALSE;
	isTimerTicking =TRUE;
	btnreset.enabled=TRUE;
	btnpause.enabled=TRUE;
	//issecondplay =TRUE;
	UIImage* img1 = [UIImage imageNamed:@"Meet.png"];
	imageview1.image=img1;
  	if(isTimerTicking)
	{	
		times = 5.0;
		timer11 = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector:@selector (play1) userInfo:nil repeats:YES];
	}	
}

-(IBAction) About
{
	UIView *mainView = self.view;
	UIView *myview=about.view;
	[UIView setAnimationDuration:1];
	//[UIView setAnimationTransition:([mainView myview] ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];
	About *temp = [[About alloc] initWithNibName:@"About" bundle:nil];
	self.about = temp;
	[temp release];
	[self.view addSubview:self.about.view];
	//[self.view setAnimationTransition:( [ ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];
	//[self.view setAnimation
	[UIView setAnimationTransition:([mainView superview] ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];								
	[window makeKeyAndVisible];
	
	
	
}





/*
 
 [UIView setAnimationDuration:1];
 [UIView setAnimationTransition:([mainView superview] ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];
 
 */

@end
