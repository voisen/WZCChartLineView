//
//  ViewController.m
//  曲线-新算法
//
//  Created by 邬志成 on 16/7/20.
//  Copyright © 2016年 邬志成. All rights reserved.
//

#import "ViewController.h"
#import "WZCChartLine.h"

@interface ViewController ()

@end

@implementation ViewController{

    WZCChartLine *v;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建折线图
     v = [[WZCChartLine alloc]initWithFrame:self.view.bounds];
    
    NSMutableArray *x_vls = [[NSMutableArray alloc]init];
    for (int i = 0; i < 20; i ++) {
        NSString *str = [NSString stringWithFormat:@"第%d天",i+1];
        [x_vls addObject:str];
    }
    // x轴坐标数组
    v.x_values = x_vls;
    NSMutableArray *y_array = [NSMutableArray array];
    for (int i = 0; i < 8; i ++) {
        NSMutableArray *arr = [NSMutableArray array];
        for (int j = 0; j < v.x_values.count; j ++) {
            CGFloat value = - arc4random_uniform(10);
            [arr addObject:[NSString stringWithFormat:@"%0.2f",value]];
        }
        [y_array addObject:arr];
    }
    // y轴坐标数组
    v.y_values = @[@[@"-100",@"-153",@"-72",@"47",@"-33",@"0",@"-23",@"98",@"66",@"99",@"-10",@"-53",@"32",@"-27",@"-93",@"50",@"17",@"8",@"-35",@"-14"]];//y_array;
    //折线名称
    v.y_titles = @[@"测试"];//@[@"黄金",@"黄金珠宝",@"项链首饰",@"项链",@"首饰",@"金币",@"销售量",@"单价浮动"];
    [v setXCoordinatesLocationInYValue:0];
    [v setCoordPlusAndMinusSymmetryShowZeroPoint:YES];
    [self.view addSubview:v];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //点击屏幕 绘制曲线
        [v startDrawWithLineType:WZCChartLineTypeCurve];
    });
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
}

@end
