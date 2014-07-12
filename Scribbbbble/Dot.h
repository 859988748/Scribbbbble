//
//  Dot.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-6.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
#import "Vertex.h"
@interface Dot : Vertex <Mark,NSCopying>
{
    UIColor * _color;
    CGFloat  _size;
}
@end