//
//  CanvasViewController.m
//  TouchPainter
//
//  Created by 陈冰 on 2017/12/30.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

#import "CanvasViewController.h"

// Factory Method
#import "CanvasViewGenerator.h"
#import "CanvasView.h"

@interface CanvasViewController ()

@property (strong, nonatomic) CanvasView *canvasView;

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CanvasViewGenerator *defaultGenerator = [CanvasViewGenerator new];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [_canvasView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    _canvasView = [generator canvasViewWithFrame:aFrame];
    NSUInteger viewIndex = self.view.subviews.count - 1;
    [self.view insertSubview:_canvasView atIndex:viewIndex];
    [self.view addSubview:_canvasView];
}

@end
