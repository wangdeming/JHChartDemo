//
//  JHWaveChart.h
//  JHChartDemo
//
//  Created by SDC201 on 2016/4/28.
//  Copyright © 2017年 PCEBG. All rights reserved.
//

#import "JHChart.h"

typedef NS_ENUM(NSInteger,JHWaveChartType){
    
    JHWaveChartUpType = 0,
    JHWaveChartUpAndDownType
    
};

@interface JHWaveChart : JHChart




/*         X轴刻度数据          */
@property (nonatomic,strong) NSArray * xLineDataArr;


/*         值数据数组          */
@property (nonatomic,strong) NSArray * valueDataArr;


@property (nonatomic,strong) UIColor * xAndYLineColor;
-(instancetype)initWithFrame:(CGRect)frame andType:(JHWaveChartType)waveChartType;



@end
