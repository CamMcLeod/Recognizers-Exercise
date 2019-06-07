//
//  ScreenEdgeViewController.m
//  Recognizers-Exercise
//
//  Created by Cameron Mcleod on 2019-06-06.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ScreenEdgeViewController.h"

@interface ScreenEdgeViewController ()

@end

@implementation ScreenEdgeViewController {
    
    UIScreenEdgePanGestureRecognizer *edgePanGesture;
    UIPanGestureRecognizer *panGesture;
    
}

-(void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat width = 500;
    CGFloat height = 500;
    
    CGRect frame = CGRectMake(CGRectGetMaxX(self.view.bounds) - 10, CGRectGetMidY(self.view.bounds) - height / 2 , width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    edgePanGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(viewEdgePanned:)];
    
     panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];
    
    edgePanGesture.edges = UIRectEdgeRight;
    
    [view addGestureRecognizer: edgePanGesture];
    [view addGestureRecognizer: panGesture];
    
    panGesture.enabled = NO;
    
}

- (void)viewEdgePanned: (UIScreenEdgePanGestureRecognizer *)sender {
    
    sender.view.transform = CGAffineTransformMakeTranslation(-200, 0);
    sender.enabled = NO;
    panGesture.enabled = YES;
    
}

- (void)viewPanned: (UIPanGestureRecognizer *)sender {
    
    sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
    sender.enabled = NO;
    edgePanGesture.enabled = YES;
    
}

@end

