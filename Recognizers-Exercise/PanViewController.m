//
//  PanViewController.m
//  Recognizers-Exercise
//
//  Created by Cameron Mcleod on 2019-06-06.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {

//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
    
}


@end
