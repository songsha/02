//
//  changeTableViewCell.m
//  kvo
//
//  Created by apple on 16/10/10.
//  Copyright © 2016年 ss. All rights reserved.
//

#import "changeTableViewCell.h"

@implementation changeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype)initWithFrame:(CGRect)frame{

    if (self=[super initWithFrame:frame]) {
        [self createui];
    }
    return self;
}
-(void)createui{
    _label1=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 40)];
    [self addSubview:_label1];
    
  //  _label2=[UILabel alloc]initWithFrame:CGRectMake(80, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);

}

@end
