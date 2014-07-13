//
//  SetStrokeColorCommand.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-13.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "Command.h"
@protocol SetStrokeColorCommandDelegate;
@interface SetStrokeColorCommand : Command
{
    @private
    id <SetStrokeColorCommandDelegate> _SetStrokeColorCommandDelegate;
}

@property(nonatomic, assign) id <SetStrokeColorCommandDelegate> SetStrokeColorCommandDelegate;
@end

@protocol SetStrokeColorCommandDelegate <NSObject>

-(void) command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red Green: (CGFloat *) green Blue: (CGFloat *) blue;
                                                                                  
-(void) command:(SetStrokeColorCommand *)command didFinishedUpdateColorWithColor:(UIColor *)color;
@end