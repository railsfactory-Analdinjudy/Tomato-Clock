//
//  About.h
//  TomatoClock
//
//  Created by GangeyaKumar on 07/01/10.
//  Copyright 2010 Sedin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Tomatoview;

@interface About : UIViewController {
	 UIWindow *window;
	Tomatoview *tomatoview;
}

@property(nonatomic,retain)  UIWindow *window;
@property(nonatomic,retain) Tomatoview *tomatoview;

-(IBAction) Back;
@end
