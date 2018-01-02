//
//  CoordinatingController.m
//  TouchPainter
//
//  Created by 陈冰 on 2017/11/18.
//  Copyright © 2017年 ChenBing. All rights reserved.
//

#import "CoordinatingController.h"
#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "ThumbnailViewController.h"

@implementation CoordinatingController

+ (CoordinatingController *)sharedInstance {
    static CoordinatingController *coordinatingCtrl = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        coordinatingCtrl = [[super allocWithZone:NULL] init];
        [coordinatingCtrl initVC];
    });
    return coordinatingCtrl;
}

+ (id)allocWithZone:(NSZone *)zone{
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone*)zone {
    return self;
}

- (void)initVC
{
    _canvasViewController = [[CanvasViewController alloc] init];
    _activeViewController = _canvasViewController;
}

- (IBAction)requestViewChangeByObject:(id)object {
    
    if ([object isKindOfClass:[UIBarButtonItem class]])
    {
        UIBarButtonItemState state = [(UIBarButtonItem *)object tag];
        switch (state)
        {
            case UIBarButtonItemNone:
            {
                [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
                _activeViewController = _canvasViewController;
            }
                break;
            case UIBarButtonItemOpenPaletteViewCtrl:
            {
                PaletteViewController *palettViewCtrl = [PaletteViewController new];
                [_canvasViewController presentViewController:palettViewCtrl animated:YES completion:nil];
                _activeViewController = palettViewCtrl;
            }
                break;
            case UIBarButtonItemOpenThumbnailViewCtrl:
            {
                ThumbnailViewController *thumbnailViewCtrl = [ThumbnailViewController new];
                [_canvasViewController presentViewController:thumbnailViewCtrl animated:YES completion:nil];
                _activeViewController= thumbnailViewCtrl;
            }
                break;
        }
    }
    else {
        // 其他情况，回到主视图，CanvasViewCtrl
        [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
        // 当前响应视图修改回去
        _activeViewController = _canvasViewController;
    }
}

@end
