//
//  ChartView.h
//  曲线-新算法
//
//  Created by 邬志成 on 16/7/22.
//  Copyright © 2016年 邬志成. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ChartViewDelegate

-(void)chartViewTouchPoint:(CGPoint)point;

@end

@interface ChartView : UIScrollView

@property (nonatomic,strong) id<ChartViewDelegate> touch_delegate;

@end

