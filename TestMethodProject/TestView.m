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

+ (id)rotationViewWithItem:(NSDictionary *)item{
    TestView *test = [[TestView alloc]init];
    test.item = item;
    [test configMethod];
    return test;
}

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
    [self changeWidth:10];
    
}
- (void)changeWidth:(CGFloat)width{
    
    self.backgroundColor = [UIColor whiteColor];
    CGFloat v3 = width;
    CGFloat  v5 = self.bounds.size.width;
    CGFloat v6 = v3 / v5;
    CGFloat v8 = v6 / self.xScale;
    CGFloat v9 = self.xScale;
    CGFloat v10 = v9 * v8;
    BOOL  v11 = NO;
    if (v10 > 0.02 ) {
        v11 = v10 < 4.0;
    }
    else{
        v11 = NO;
    }
    if (v11 ) {
        self.xScale = v10;
        CGAffineTransform  rotaion = CGAffineTransformMakeRotation(self.maxX);
        
        self.transform = CGAffineTransformScale(rotaion, self.xScale , self.yScale);
    }
    BOOL v12 = arc4random()%2;
    BOOL v13 =  v12 & (v10 > 0.02);
    
    if ( v12) {
        self.xScale = 11;
        
    }
    if ( v13) {
        self.xScale = 12;

    }
    [self turnOverHMethod];
}
- (void)turnOverHMethod{
    BOOL v5 = arc4random()%2;
    
    self.turnOverH = v5 ^ 1;
    [self updataContentView];
    
}
- (void)updataContentView{
    
    NSString *v148 = @"发所发生的\n大范德萨打反倒是案发生的发送\n打死了开发的数量； 打开sad爱迪生所多 ";
    CGFloat v22 = 22;
    
    CGFloat v36 = 39;
    CGFloat v33 = 39;

    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:v22],NSFontAttributeName,@(2.0),NSKernAttributeName,nil];
    
    CGRect  rect =  [v148 boundingRectWithSize:CGSizeMake(MAXINTERP, MAXINTERP) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil];
    CGFloat v31 = rect.size.height;
                   
    while (v22 >0 && v31 > v36) {
        dic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:v22],NSFontAttributeName,@(2.0),NSKernAttributeName,nil];
        rect =  [v148 boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil];
        v31 = rect.size.height;
        if (rect.size.width < v33) {
            break;
        }
        NSLog(@"v22 == %f",v22);
        v22 -= 1.0;
    }
    
    
    UIFont *font = [UIFont systemFontOfSize:22];
    
    UILabel *v61 = [[UILabel alloc]init];
    v61.font = font;
    
    UIGraphicsBeginImageContextWithOptions(self.frame.size,NO,0.5);
    CGContextRef contextRef =  UIGraphicsGetCurrentContext();
    CGContextSaveGState(contextRef);
    
    CGFloat v186 = CGAffineTransformIdentity.a;
    CGFloat v187 = CGAffineTransformIdentity.b;
    CGFloat v188 = CGAffineTransformIdentity.c;
    CGFloat v189 = CGAffineTransformIdentity.d;
    CGFloat v190 = CGAffineTransformIdentity.tx;
    CGFloat v191 = CGAffineTransformIdentity.ty;

    CGContextSetTextMatrix(contextRef, CGAffineTransformMake(1, 2, 3, 4, 5, 6));
    
    CGContextScaleCTM(contextRef, 0.5, 0.6);

    CGMutablePathRef muPathRef = CGPathCreateMutable();
    
    CGPathAddRect(muPathRef, &CGAffineTransformIdentity, CGRectMake(0, 0, 100, 100));

    UIGraphicsEndImageContext();
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
