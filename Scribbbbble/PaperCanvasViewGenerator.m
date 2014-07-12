//
//  PaperCanvasViewGenerator.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator
-(CanvasView *)CanvasViewWithFrame:(CGRect) aframe
{
    return [[PaperCanvasView alloc] initWithFrame:aframe];
}
@end
