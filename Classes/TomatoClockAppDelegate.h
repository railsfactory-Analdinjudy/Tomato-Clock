//
//  TomatoClockAppDelegate.h
//  TomatoClock
//
//  Created by GangeyaKumar on 23/12/09.
//  Copyright Sedin 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Tomatoview;

@interface TomatoClockAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	Tomatoview *tomatoview;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain)  Tomatoview *tomatoview;

@end

