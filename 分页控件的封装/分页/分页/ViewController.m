//
//  ViewController.m
//  分页
//
//  Created by apple on 16/5/6.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZPPageView.h"
#import "ZPLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建ZPPageView控件
//    ZPPageView *pageView = [[ZPPageView alloc] init];  //用代码的方式创建自定义控件
    ZPPageView *pageView = [ZPPageView pageView];  //用xib的方式创建自定义控件
    pageView.frame = CGRectMake(37, 50, 300, 130);
    pageView.imageNames = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9",  nil];
    pageView.currentColor = [UIColor yellowColor];  //设置当前圆点的颜色
    pageView.otherColor = [UIColor brownColor];  //设置其他圆点的颜色
    [self.view addSubview:pageView];
    
    //创建ZPLabel控件
    ZPLabel *label = [[ZPLabel alloc] init];
    label.frame = CGRectMake(37, 300, 150, 20);
    label.text = @"原价：998￥";
    [self.view addSubview:label];
}

@end;
