//
//  ClothCanvasView.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //blue
        UIImage * image = [[UIImage alloc] init];
        UIImageView * imageview =  [[UIImageView alloc] initWithImage:image];
        self.backgroundColor = [UIColor blueColor];
        [self addSubview:imageview];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
