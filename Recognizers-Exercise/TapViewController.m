//
//  TapViewController.m
//  Recognizers-Exercise
//
//  Created by Cameron Mcleod on 2019-06-06.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height / 2 , width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *TapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer: TapGesture];
    
}

- (void)viewTapped: (UITapGestureRecognizer *)sender {
    
    UIColor *someColor = sender.view.backgroundColor;
    
    // ternary expression
    UIColor *color = [someColor isEqual: [UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];
    
    sender.view.backgroundColor = color;
}

@end
