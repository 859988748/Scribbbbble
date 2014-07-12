//
//  ClothCanvasViewGenerator.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator
-(CanvasView *)CanvasViewWithFrame:(CGRect) aframe
{
    return [[ClothCanvasView alloc] initWithFrame:aframe];
}
@end
