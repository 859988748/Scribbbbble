//
//  SetStrokeColorCommand.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-13.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "SetStrokeColorCommand.h"
#import "CanvasViewController.h"
#import "CoordinatingController.h"

@implementation SetStrokeColorCommand
-(void)execute{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    [_SetStrokeColorCommandDelegate command:self didRequestColorComponentsForRed:&red Green:&green Blue:&blue];
    UIColor * color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    
    CoordinatingController * coordinatingController = [CoordinatingController sharedInstance];
    CanvasViewController * canvasViewController  = [coordinatingController canvasViewController];
    [canvasViewController setColor:color];
    [_SetStrokeColorCommandDelegate command:self didFinishedUpdateColorWithColor:color];
    
}
-(void)dealloc{
    [super dealloc];
}
@end
