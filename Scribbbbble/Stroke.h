//
//  Stroke.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject<Mark,NSCopying>
{
    UIColor * _color;
    CGFloat _size;
    NSMutableArray * _children;
}

@property (nonatomic,retain) UIColor * color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;
@property (nonatomic,readonly) id<Mark> lastChild;


-(void)addMark:(id<Mark>) mark;
-(void)removeMark:(id<Mark>) mark;
-(id<Mark>) childMarkAtIndex:(NSUInteger) index;
-(id)copyWithZone:(NSZone *)zone;
@end
