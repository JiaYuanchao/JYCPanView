//
//  JYCViewController.m
//  JYCPanView
//
//  Created by yuanchao__2106 on 07/24/2019.
//  Copyright (c) 2019 yuanchao__2106. All rights reserved.
//

#import "JYCViewController.h"
#import <JYCPanView/JYCPanView.h>
@interface JYCViewController ()

@property (nonatomic, strong) JYCPanView *panView;

@end

@implementation JYCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.panView];
}

- (JYCPanView *)panView
{
    if (!_panView) {
        _panView = [[JYCPanView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _panView.panDerection = JYCPanDerectionVertical | JYCPanDerectionHorizontal;
        _panView.backgroundColor = [UIColor redColor];
        _panView.minX = 0;
        _panView.maxX = 300;
        _panView.midX = 100;
        _panView.minY = 0;
        _panView.midY = 200;
        _panView.maxY = 500;
    }
    return _panView;
}

@end
