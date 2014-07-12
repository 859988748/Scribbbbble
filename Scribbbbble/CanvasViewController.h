//
//  CanvasViewController.h
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController : UIViewController
{
    
}

@property (retain) CanvasView * canvasView;
-(void)LoadCanvasViewWtihGenerator:(CanvasViewGenerator *)aCanvasViweGenrator;
@end
