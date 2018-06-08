//
//  TestView.m
//  TestMethodProject
//
//  Created by luck on 2018/6/7.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "TestView.h"
@interface TestView()

@property(nonatomic,assign) CGFloat origin_x;
@property(nonatomic,assign) CGFloat origin_y;
@property(nonatomic,assign) CGFloat size_width;
@property(nonatomic,assign) CGFloat size_height;
@property(nonatomic,assign) CGPoint centerPoint;
@property(nonatomic,assign) CGFloat center_x;
@property(nonatomic,assign) CGFloat center_y;
@property(nonatomic,assign) CGFloat origin;
@property(nonatomic,assign) CGFloat maxX;

@end

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame: frame];
    if (self) {
        [self configMethod];

    }
    return self;
}
- (void)configMethod{
    self.size_height = self.frame.size.height;
    self.origin_y = self.frame.origin.y;
    
    self.size_width = self.frame.size.width;

    self.center_y = self.center.y;
    
    self.centerPoint = self.center;
    
    self.origin_x = self.frame.origin.x;

    

    self.center_x = self.center.x;
    self.maxX  = self.center.x + self.frame.size.width;
    
    self. origin = atan(0);
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
