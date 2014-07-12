//
//  Vertex.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Vertex : NSObject<Mark,NSCopying>
{
    CGPoint _location;
}

@property (nonatomic,retain) UIColor * color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,assign) NSUInteger count;
@property (nonatomic,readonly) id<Mark> lastChild;

-(id) initWithLocation:(CGPoint) location;
-(void)addMark:(id<Mark>) mark;
-(void)removeMark:(id<Mark>) mark;
-(id<Mark>) childMarkAtIndex:(NSUInteger) index;

-(id) copyWithZone:(NSZone *)zone;


@end
