//
//  Vertex.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

-(id) initWithLocation:(CGPoint)alocation{
    if (self = [super init]) {
        _location =  alocation;
    }
    return self;
}

-(void)addMark:(id<Mark>) mark{
    
}
-(void)removeMark:(id<Mark>) mark{
    
}
-(id<Mark>) childMarkAtIndex:(NSUInteger) index{
    return  nil;
}

#pragma mark - NSCopying method
// need to be implmented for memonto
-(id)copyWithZone:(NSZone *)zone{
    Vertex * vertexcopy =  [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertexcopy;
}

-(void)dealloc{
    
    [super dealloc];
}

@end
