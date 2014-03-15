//
//  ScrollViewDelegate.m
//  ScrollStudderingLab
//
//  Created by Fille Åström on 13/02/14.
//  Copyright (c) 2014 Fille Åström. All rights reserved.
//

#import "ScrollViewDelegate.h"

@implementation ScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
//    static NSTimeInterval prevTime;
//    NSTimeInterval timeElapsed = currentTime - prevTime;
//    if (timeElapsed > 0.033) {
//        NSLog(@"%f", timeElapsed);
//    }
////    else if (timeElapsed > 0.018) {
////        NSLog(@"WARNING: %f", timeElapsed);
////    }
////    else {
////        NSLog(@"%f", timeElapsed);
////    }
//    prevTime = currentTime;
    
    CGPoint position = scrollView.contentOffset;
    position.x = -position.x + 160;
    self.scene.myLabel.position = position;
}

@end
