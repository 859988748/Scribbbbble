//
//  CanvasViewGenerator.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "CanvasView.h"
@implementation CanvasViewGenerator

-(CanvasView *)CanvasViewWithFrame:(CGRect) aframe
{
    return [[CanvasView alloc] initWithFrame:aframe];
}
@end
