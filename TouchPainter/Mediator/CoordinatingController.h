//
//  CoordinatingController.h
//  TouchPainter
//
//  Created by 陈冰 on 2017/11/18.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

/**
 中介者设计模式
 
 何时使用
 1. 对象间点交互虽定义明确然而非常复杂，导致一组对象彼此相互依赖而且难以理解；
 2. 因为对象引用了许多其他对象并与其通讯，导致对象难以复用；
 3. 想用定制一个分布在多个类中的逻辑或行为，又不想生成太多子类。
 
 缺陷
 中介者模式以中介者内部的复杂性代替交互的复杂性。
 因为终结者封装与合并了colleague（同事）的各种协作逻辑，自身可能变得比它们任何一个都复杂。
 这会让中介者本身成为无所不知的庞然大物，并且难以维护。
 */

#import <Foundation/Foundation.h>

typedef enum {
    kButtonTagDone,
    kButtonTagOpenPaletteViewCtrl,
    kButtonTagOpenThumbnailViewCtrl
} ButtonTag;


@class CanvasViewController;
@interface CoordinatingController : NSObject <NSCopying>

@property (readonly, nonatomic) UIViewController *activeViewController;
@property (readonly, nonatomic) CanvasViewController *canvasViewController;

+ (CoordinatingController *)sharedInstance;

- (IBAction)requestViewChangeByObject:(id)object;

@end
