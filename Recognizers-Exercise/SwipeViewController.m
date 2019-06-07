//
//  SwipeViewController.m
//  Recognizers-Exercise
//
//  Created by Cameron Mcleod on 2019-06-06.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat height = 50;
    
    CGRect frame = CGRectMake(10, CGRectGetMidY(self.view.bounds) - height / 2 , CGRectGetMaxX(self.view.bounds)-20, height);
    
    UIView *view1 = [[UIView alloc] initWithFrame:frame];
    view1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view1];
    
    CGRect frameSlider = CGRectMake(0, 0 , CGRectGetMaxX(view1.bounds), CGRectGetMaxY(view1.bounds));
    [view1 setClipsToBounds:YES];
    
    UIView *viewSlider = [[UIView alloc] initWithFrame:frameSlider];
    viewSlider.backgroundColor = [UIColor greenColor];
    [view1 addSubview:viewSlider];
    
    UISwipeGestureRecognizer *swipeRightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwiped:)];
    swipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwiped:)];
    swipeLeftGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [viewSlider addGestureRecognizer:swipeRightGesture];
    [viewSlider addGestureRecognizer:swipeLeftGesture];
    
}

- (void)viewSwiped: (UISwipeGestureRecognizer *)sender {
    
    switch (sender.direction) {
            
        case UISwipeGestureRecognizerDirectionLeft:
            sender.view.transform = CGAffineTransformMakeTranslation(-100, 0);
            break;
        case UISwipeGestureRecognizerDirectionRight:
            sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
            break;
            
        default:
            break;
    }
    
}

@end
