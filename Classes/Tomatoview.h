//
//  Tomatoview.h
//  TomatoClock
//
//  Created by GangeyaKumar on 23/12/09.
//  Copyright 2009 Sedin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<AudioToolbox/AudioServices.h>
@class TomatoClockAppDelegate;
@class About;

@interface Tomatoview : UIViewController {
	IBOutlet UILabel *lbltimer;
	IBOutlet UIButton *btnstart;
	IBOutlet UIButton *btnpause;
	IBOutlet UIButton *btnreset;
	IBOutlet UIButton *btnplay;
	About *about;
    NSTimer *timer,*timer1,*timer2,*timer3,*timer10,*timer11;
	SystemSoundID clappingFileID;
	SystemSoundID clappingFileID1;
	//IBOutlet UIDatePicker *picker;
	IBOutlet UITextField *txtfld;
	IBOutlet UITextField *txtfld1;
	NSString *m_pDatabaseName, *m_pDatabasePath;
	
	//Array to store flower objects
	NSMutableArray *tomatoarray;
	NSString *mydate;
	NSString *comments;
	TomatoClockAppDelegate *tomatoapp;
    Tomatoview *tomatoview;
	//TomatoList *tomatolist;
	IBOutlet UIWindow *window;
	NSDate *selected;
	NSDateFormatter *detailsTimeFormatter;
	IBOutlet UIImageView *imageview1;
	IBOutlet UIButton *btncheck,*btncheck1;
}


@property(nonatomic,retain) IBOutlet UILabel *lbltimer;
@property(nonatomic,retain) IBOutlet UIButton *btnstart;
@property(nonatomic,retain) IBOutlet UIButton *btnpause;
@property(nonatomic,retain) IBOutlet UIButton *btnreset;
@property(nonatomic,retain) IBOutlet UIButton *btnplay;
@property(nonatomic,retain) About *about;
@property(nonatomic,retain) NSTimer *timer;
@property(nonatomic,retain) NSTimer *timer1;
@property(nonatomic,retain) NSTimer *timer2;
@property(nonatomic,retain) NSTimer *timer3;
@property(nonatomic,retain) NSTimer *timer10;
@property(nonatomic,retain) NSTimer *timer11;
@property(nonatomic) SystemSoundID clappingFileID;
@property(nonatomic) SystemSoundID clappingFileID1;
//@property(nonatomic) UIDatePicker *picker;
//@property(nonatomic,retain) NSString *m_pDatabaseName;
//@property(nonatomic,retain)  NSString *m_pDatabasePath;
@property(nonatomic,retain) NSMutableArray *tomatoarray;
@property(nonatomic,retain) NSString *mydate;
@property(nonatomic,retain) NSString *comments;
@property(nonatomic,retain)  TomatoClockAppDelegate *tomatoapp;
@property(nonatomic,retain) Tomatoview *tomatoview;
//@property(nonatomic,retain) TomatoList *tomatolist;  
//@property(nonatomic) sqlite3 *tomato_db;
@property(nonatomic,retain) IBOutlet UIWindow *window;
@property(nonatomic,retain) IBOutlet UITextField *txtfld1;
@property(nonatomic,copy) NSDate *selected;
@property(nonatomic,retain) IBOutlet UIImageView *imageview1;
@property(nonatomic,retain) IBOutlet UIButton *btncheck;
@property(nonatomic,retain) IBOutlet UIButton *btncheck1;
- (IBAction) start;
- (IBAction) reset;

-(IBAction) pause;
-(IBAction) play;
-(IBAction) check;
-(IBAction) uncheck;
-(IBAction) About;
-(void) timerTick;
-(void) stop1;
-(void) playaudio1;
-(void) playaudio2;
-(void) playaudios;
-(void)countDowns;

-(IBAction) mydates;
-(void) checkAndCreateDatabase;
-(void) InsertdataintoDatabase;
-(void) ontimer;
-(void) ontimer1;

-(void) mytime;
-(void) mytimes;
//- (id)initWithdate:(NSDate)mydates1;
@end
