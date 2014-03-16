//
//  ViewController.m
//  ScrollStudderingLab
//
//  Created by Fille Åström on 12/02/14.
//  Copyright (c) 2014 Fille Åström. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import "ScrollViewDelegate.h"

@implementation ViewController {
    SKView *skView;
    MyScene *scene;
    ScrollViewDelegate *delegate;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    skView.asynchronous = NO;
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
    delegate = [ScrollViewDelegate new];
    delegate.scene = scene;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollView.delegate = delegate;
    scrollView.contentSize = CGSizeMake(2000, 2000);
//    scrollView.delaysContentTouches = NO;
    [skView addSubview:scrollView];
    [skView addGestureRecognizer:scrollView.panGestureRecognizer];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
