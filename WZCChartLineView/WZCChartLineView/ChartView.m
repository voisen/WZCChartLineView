//
//  ChartView.m
//  曲线-新算法
//
//  Created by 邬志成 on 16/7/22.
//  Copyright © 2016年 邬志成. All rights reserved.
//

#import "ChartView.h"


@implementation ChartView


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    longPress.minimumPressDuration = 0.2;
    [self addGestureRecognizer:longPress];
    
    return self;
}

- (void)longPress:(UIGestureRecognizer*)press{

    if (press.state == UIGestureRecognizerStateBegan) {
        
        CGPoint point = [press locationInView:self];
        
        [self.touch_delegate chartViewTouchPoint:point];
    }

}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [touches anyObject];
//    CGPoint touch_point = [touch locationInView:self];
//    [self.touch_delegate chartViewTouchPoint:touch_point];
//}

@end
