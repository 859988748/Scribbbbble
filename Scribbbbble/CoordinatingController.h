//
//  CoordinatingController.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-14.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewController.h"

@interface CoordinatingController : UIViewController
{
    CanvasViewController * _canvasViewController;
    UIViewController * _activeViewController;
}


@property(nonatomic,readonly)CanvasViewController * canvasViewController;
@property(nonatomic,readonly)UIViewController * activeViewController;
+(CoordinatingController *) sharedInstance;
-(IBAction)requesViewChangeByObject:(id)sender;
@end
