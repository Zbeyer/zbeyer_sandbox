//
//  PCViewController.m
//  sandBox
//
//  Created by Zachary Beyer on 3/8/14.
//  Copyright (c) 2014 Zbeyer. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated;
{
    [super viewWillAppear:animated];
    [self helloWorld];
}

- (void) helloWorld;
{
    for (UIView * view in self.view.subviews)
    {
        [view removeFromSuperview];
    }
    
    float width = self.view.frame.size.width/2;
    float height = self.view.frame.size.height/2;
    
    CGRect r = CGRectMake((self.view.frame.size.width - width)/2,
                          (self.view.frame.size.height - height)/2,
                          width,
                          height);
    
    UILabel * hWorld = [[UILabel alloc]initWithFrame:r];
    hWorld.backgroundColor = [UIColor clearColor];
    hWorld.text = @"Hello World";
    hWorld.font = [UIFont fontWithName:hWorld.font.familyName size:64];
    hWorld.adjustsFontSizeToFitWidth = YES;
    hWorld.textAlignment = NSTextAlignmentCenter;
    hWorld.textColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
    [self.view addSubview:hWorld];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
