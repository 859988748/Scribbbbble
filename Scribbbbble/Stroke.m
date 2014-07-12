//
//  Stroke.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "Stroke.h"
#import "Vertex.h"


@implementation Stroke

-(id) init{
    if (self = [super init]) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}
-(CGPoint) location{
    //return the location of the first child
    if ([_children count] > 0) {
        return [(id<Mark>)[_children objectAtIndex:0] location];
    }
    return CGPointZero;
}
-(void) addMark:(id<Mark>)mark {
    [_children addObject:mark];
}
-(void) removeMark:(id<Mark>)mark{
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else{
        [_children makeObjectsPerformSelector:@selector(removeMark:)withObject:mark];
    }
}
-(id<Mark>) lastChild{
    return [_children lastObject];
}
-(NSUInteger) count{
    return [_children count];
}
-(void) dealloc{
    [_color release];
    [_children release];
    [super dealloc];
}

#pragma mark - nscopying method
-(id) copyWithZone:(NSZone *)zone{
    Stroke * strokecopy = [[[self class] allocWithZone:zone]init];
    strokecopy.color = [UIColor colorWithCGColor:[_color CGColor]];
    strokecopy.size = _size;
    for (id<Mark> child in _children ){
        id <Mark> childcopy = [child copy];
        [strokecopy addMark:childcopy];
        [childcopy release];
    }
    return nil;
}


@end
