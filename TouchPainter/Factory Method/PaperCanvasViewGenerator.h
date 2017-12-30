//
//  PaperCanvasViewGenerator.h
//  TouchPainter
//
//  Created by 陈冰 on 2017/11/18.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasViewGenerator.h"
#import "PaperCanvasView.h"

@interface PaperCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end
