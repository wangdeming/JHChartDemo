//
//  JHPieItemsView.m
//  JHCALayer
//
//  Created by SDC201 on 2016/4/28.
//  Copyright © 2017年 PCEBG. All rights reserved.
//

#import "JHPieItemsView.h"
@interface JHPieItemsView ()

@property (nonatomic,assign) CGFloat beginAngle;
@property (nonatomic,assign) CGFloat endAngle;
@property (nonatomic,strong) UIColor * fillColor;
@property (nonatomic,strong) CAShapeLayer * shapeLayer;
@end
@implementation JHPieItemsView
-(JHPieItemsView *)initWithFrame:(CGRect)frame andBeginAngle:(CGFloat)beginAngle andEndAngle:(CGFloat)endAngle andFillColor:(UIColor *)fillColor{
    
    if (self = [super initWithFrame:frame]) {
        
        
        _beginAngle = beginAngle;
        _endAngle = endAngle;
        _fillColor = fillColor;
        
        [self configBaseLayer];
        
    }
    
    return self;
    
    
    
}

- (void)configBaseLayer{
    _shapeLayer = [CAShapeLayer layer];

    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path addArcWithCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:self.frame.size.width/2 startAngle:_beginAngle endAngle:_endAngle clockwise:YES];
    
    _shapeLayer.path = path.CGPath;
    _shapeLayer.lineWidth = self.frame.size.width;
    _shapeLayer.strokeColor = _fillColor.CGColor;
    _shapeLayer.fillColor = [UIColor clearColor].CGColor;

    
    [self.layer addSublayer:_shapeLayer];
    
    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    basic.duration = 1.1;
    basic.fromValue = @(0.1f);
    basic.toValue = @(1.0f);
    [_shapeLayer addAnimation:basic forKey:@"basic"];
    
    
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch%ld",self.tag);
    
}

@end
