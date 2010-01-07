//
//  Introduction.h
//  TomatoClock
//
//  Created by GangeyaKumar on 07/01/10.
//  Copyright 2010 Sedin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Tomatoview;

@interface Introduction : UIViewController {
	
IBOutlet UIActivityIndicatorView *activityIndicator; 
	Tomatoview *tomatoview;
	UIWindow *window;
	NSTimer *timer1;
	IBOutlet UIView *modelView;
}
@property(nonatomic,retain) IBOutlet UIActivityIndicatorView *activityIndicator; 
@property(nonatomic,retain) Tomatoview *tomatoview;
@property(nonatomic,retain) UIWindow *window;
@property(nonatomic,retain) NSTimer *timer1;

-(void) Displayview;
-(void)showSplash;
- (void)hideSplash;
@end
