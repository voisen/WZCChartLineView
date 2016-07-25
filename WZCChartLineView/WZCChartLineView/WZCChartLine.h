//
//  WZCChartLine.h
//  曲线-新算法
//
//  Created by 邬志成 on 16/7/20.
//  Copyright © 2016年 邬志成. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChartView.h"

typedef enum : NSInteger {
    WZCChartLineTypeBroken = 0,//broken line 折线
    WZCChartLineTypeCurve  //曲线
}  WZCChartLineType;

@interface WZCChartLine : UIView<ChartViewDelegate>

/** X 坐标轴上的值 (字符串)*/
@property (nonnull,strong,nonatomic) NSArray<NSString*> *x_values;
/* Y坐标上的值 支持多组值 (字符串)*/
@property (nonnull,strong,nonatomic) NSArray<NSArray<NSString*> * > *y_values;
/* 折线的名称/类别 (有几条直线就有一个名字,默认无) */
@property (nonnull,strong,nonatomic) NSArray<NSString*> *y_titles;
/* 折线的颜色数组(默认随机方法) */
@property (nonnull,strong,nonatomic) NSArray<UIColor *> *colorsArray;

/* 以上 设置完毕后才调用绘图方法 */
-(void)startDrawWithLineType:(WZCChartLineType)lineType;
@end

