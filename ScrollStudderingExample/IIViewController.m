//
//  IIViewController.m
//  ScrollStudderingExample
//
//  Created by Fille Åström on 15/03/14.
//  Copyright (c) 2014 IMGNRY International AB. All rights reserved.
//

#import "IIViewController.h"
#import "IIMyScene.h"
#import "IIAppDelegate.h"

@interface IIViewController ()

@property (nonatomic) UIScrollView *scrollView;
@property (nonatomic) IIMyScene *scene;

@end

@implementation IIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView *skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
//    skView.asynchronous = NO;
    
    // Create and configure the scene.
    self.scene = [IIMyScene sceneWithSize:skView.bounds.size];
    self.scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:self.scene];
    
    // Add scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:skView.frame];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(skView.frame.size.width, skView.frame.size.height * 2);
    [skView addSubview:self.scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    dispatch_async( dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0 ), ^{
        self.scene.myLabel.position = CGPointMake(self.scene.myLabel.position.x, scrollView.contentOffset.y);
//    NSLog(@"scrollView.contentOffset.y: %f", scrollView.contentOffset.y);
//    ((IIAppDelegate *)[UIApplication sharedApplication].delegate).y = scrollView.contentOffset.y;
//    });
}

@end
