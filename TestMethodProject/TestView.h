//
//  TestView.h
//  TestMethodProject
//
//  Created by luck on 2018/6/7.
//  Copyright © 2018年 luck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestView : UIView

@property(nonatomic) CGFloat xScale; // @synthesize xScale=_xScale;
@property(nonatomic) CGFloat yScale; // @synthesize yScale=_yScale;
@property(nonatomic) CGFloat angle; // @synthesize angle=_angle;
@property(nonatomic,assign) BOOL turnOverH;
@property(nonatomic,strong) NSDictionary *item;
+ (id)rotationViewWithItem:(NSDictionary *)item;
@end
