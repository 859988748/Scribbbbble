//
//  CoordinatingController.m
//  Scribbbbble
//
//  Created by Elliot on 14-7-14.
//  Copyright (c) 2014年 Llch. All rights reserved.
//

#import "CoordinatingController.h"

@interface CoordinatingController ()

@end

@implementation CoordinatingController

static CoordinatingController * _instance = nil;
+(CoordinatingController *) sharedInstance{
    @synchronized(self){
        if (_instance == nil) {
//                        NSLog(@"first alloc");
            _instance = [NSAllocateObject([self class], 0, NULL) init];
        }else{
//                        NSLog(@"instance already exits");
        }
    }
    
    //    NSLog(@"%d",_instance.retainCount);
    return _instance;
}
+(id) allocWithZone:(struct _NSZone *)zone{
    //    NSLog(@"allocWithZone invoked");
    return [[self sharedInstance] retain];
}

-(id) copyWithZone:(NSZone *)zone{
    return self;
}

-(id) retain{
    return self;
}

-(NSUInteger) retainCount{
    return NSIntegerMax;
}
-(oneway void) release{
    
}
-(id) autorelease{
    return self;
}
-(IBAction)requesViewChangeByObject:(id)sender{
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        switch ([sender tag]) {
            case kButtonTagOpenPaletteView:
            {
                NSLog(@"paletteview");
                UIViewController * controller = [[UIViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:nil];
                _activeViewController = controller;
            }
                break;
            case kButtonTagOpenThumbnailView:
            {
                NSLog(@"thumbnailview");
                UIViewController * controller = [[UIViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:nil];
                _activeViewController = controller;
            }

                break;
            default:
                [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
                _activeViewController = _canvasViewController;
                break;
        }
    }else{
        [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
        _activeViewController = _canvasViewController;
    }
}
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}
@end
