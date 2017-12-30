//
//  CanvasViewGenerator.h
//  TouchPainter
//
//  Created by 陈冰 on 2017/11/18.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CanvasView.h"
/**
 工厂方法
 
 定义创建对象的接口，让子类决定实例化哪一个类，工厂方法使得一个类的实例化延迟到其子类。
 */
@interface CanvasViewGenerator : NSObject

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end
