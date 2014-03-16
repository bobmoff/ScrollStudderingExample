//
//  IIMyScene.m
//  ScrollStudderingExample
//
//  Created by Fille Åström on 15/03/14.
//  Copyright (c) 2014 IMGNRY International AB. All rights reserved.
//

#import "IIMyScene.h"
#import "IIAppDelegate.h"

@implementation IIMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        self.myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        self.myLabel.text = @"Hello, World!";
        self.myLabel.fontSize = 30;
        self.myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:self.myLabel];
    }
    return self;
}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    /* Called when a touch begins */
//    
//    for (UITouch *touch in touches) {
//        CGPoint location = [touch locationInNode:self];
//        
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        [self addChild:sprite];
//    }
//}
//
-(void)update:(CFTimeInterval)currentTime
{
    CGFloat y = ((IIAppDelegate *)[UIApplication sharedApplication].delegate).y;
//    NSLog(@"y: %f", y);
    self.myLabel.position = CGPointMake(self.myLabel.position.x, y);
}

@end
