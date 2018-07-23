//
//  ZPLabel.m
//  分页
//
//  Created by 赵鹏 on 2018/7/19.
//  Copyright © 2018年 apple. All rights reserved.
//

/**
 在initWithFrame和awakeFromNib方法里都调用初始化方法setup，表示的是不管外界使用的是代码的方式还是xib的方式创建这个自定义控件，都会调用相同的初始化方法，所以外界用哪种方式创建此自定义控件都可以，这样封装自定义控件的好处就是不受外界创建方式的约束。以后自定义控件的时候都要参考这种方式进行自定义，给外界创建自定义控件的时候留最大的自由空间（代码和xib创建方式均可）。
 */
#import "ZPLabel.h"

@implementation ZPLabel

#pragma mark ————— 用代码创建时的初始化方法 —————
/**
 如果其他类是使用代码创建这个自定义控件的话，则会调用这个方法，不会调用下面的awakeFromNib方法；
 在这个方法里进行初始化的工作。
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setup];
    }
    
    return self;
}

#pragma mark ————— 用xib创建时的初始化方法 —————
/**
 如果这个自定义控件是用xib创建的话，则会调用这个方法，不会调用上面的initWithFrame方法；
 在这个方法里进行初始化的工作。
 */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setup];
}

#pragma mark ————— 自定义控件的初始化方法 —————
- (void)setup
{
    self.textColor = [UIColor redColor];
    self.textAlignment = NSTextAlignmentCenter;
}

#pragma mark ————— 自定义控件的绘制方法 —————
/**
 当自定义控件显示到屏幕上时，系统就会自动调用此方法进行绘制；
 */
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    [self.textColor set];
    CGFloat w = rect.size.width;
    CGFloat h = rect.size.height;
    UIRectFill(CGRectMake(0, h * 0.3, w, 1));
}

@end
