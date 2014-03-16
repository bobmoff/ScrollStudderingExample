//
//  ScrollViewDelegate.h
//  ScrollStudderingLab
//
//  Created by Fille Åström on 13/02/14.
//  Copyright (c) 2014 Fille Åström. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyScene.h"

@interface ScrollViewDelegate : NSObject<UIScrollViewDelegate>

@property (nonatomic) MyScene *scene;

@end
