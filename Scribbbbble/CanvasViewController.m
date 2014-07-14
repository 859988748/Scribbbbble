//
//  CanvasViewController.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-8.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "CanvasViewController.h"
#import "PaperCanvasViewGenerator.h"

@interface CanvasViewController ()
{
    CanvasView * _canvasView;
}
@end

@implementation CanvasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
//    CanvasViewGenerator * generator = [[PaperCanvasViewGenerator alloc] init];
//    [self LoadCanvasViewWtihGenerator:generator];
//    [generator release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{

    [super dealloc];
}
-(void)LoadCanvasViewWtihGenerator:(CanvasViewGenerator *)aCanvasViweGenrator{
    [_canvasView removeFromSuperview ];
    CGRect aframe = CGRectMake(0, 0, 320, 200);
    self.canvasView = [aCanvasViweGenrator CanvasViewWithFrame:aframe];
    [self.view addSubview:_canvasView];
}
@end
