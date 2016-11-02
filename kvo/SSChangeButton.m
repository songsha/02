//
//  SSChangeButton.m
//  kvo
//
//  Created by apple on 16/10/10.
//  Copyright © 2016年 ss. All rights reserved.
//

#import "SSChangeButton.h"
#define THEMECOLOR [UIColor colorWithRed:72/255.0 green:167/255.0 blue:236/255.0 alpha:1]

@implementation SSChangeButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self createUI];
    }
    
    return self;
}
-(void)createUI{
    
    [self setTitleColor:THEMECOLOR forState:UIControlStateSelected];
    [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    _blueLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, self.frame.size.height-3, self.frame.size.width, 3)];
    _blueLabel.backgroundColor=THEMECOLOR;
    [self addSubview:_blueLabel];
}
-(void)didChangeValueForKey:(NSString *)key{
    
    if ([key isEqualToString:@"didselect"]) {
        if ([_didselect isEqualToString:@"YES"]) {
            NSLog(@"YES");
            self.selected=YES;
            _blueLabel.alpha=1;
        }
        else{
            NSLog(@"NO");
            self.selected=NO;
            _blueLabel.alpha=0;
        
        }
    }
}
@end
