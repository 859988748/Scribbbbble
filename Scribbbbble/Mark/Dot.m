//
//  Dot.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "Dot.h"

@implementation Dot

#pragma mark - NSCopying delegate method
-(id) copyWithZone:(NSZone *)zone{
    Dot * dotcopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    dotcopy.color = [UIColor colorWithCGColor:[_color CGColor]];
    dotcopy.size = _size;
    return dotcopy;
}
-(void)dealloc{
    [_color release];
    [super dealloc];
}

@end
