//
//  SSChangeView.m
//  kvo
//
//  Created by apple on 16/10/10.
//  Copyright © 2016年 ss. All rights reserved.
//

#import "SSChangeView.h"

#define SCREENW [UIScreen mainScreen].bounds.size.width
#define SCREENH [UIScreen mainScreen].bounds.size.height

@implementation SSChangeView

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
    _buttontag=@"0";
    _buyButton=[[SSChangeButton alloc]initWithFrame:CGRectMake(0, 0, SCREENW/2, 40)];
    _buyButton.selected=@"YES";
    [_buyButton addObserver:self forKeyPath:@"didselect" options:NSKeyValueObservingOptionNew context:nil];
    [_buyButton addTarget:self action:@selector(changeselect:) forControlEvents:UIControlEventTouchUpInside];
    _buyButton.tag=100;
    [_buyButton setTitle:@"买入须知" forState:UIControlStateNormal];
    [self addSubview:_buyButton];
    _sellButton=[[SSChangeButton alloc]initWithFrame:CGRectMake(SCREENW/2.0, 0, SCREENW/2.0, 40)];
    
    _sellButton.selected=NO;
    _sellButton.blueLabel.alpha=0;
    _sellButton.didselect=@"NO";
    [_sellButton setTitle:@"取出须知" forState:UIControlStateNormal];
    [_sellButton addObserver:self forKeyPath:@"didselect" options:NSKeyValueObservingOptionNew context:nil];
    _sellButton.tag=101;
    [_sellButton addTarget:self action:@selector(changeselect:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_sellButton];
    _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 40, SCREENW, 100) style:UITableViewStylePlain];
    _tableview.delegate=self;
    _tableview.dataSource=self;
   // [self addSubview:_tableview];

}

-(void)changeselect:(SSChangeButton *)button{
    
    
    if (button.tag==100) {
        button.didselect=@"YES";
        SSChangeButton * button=[self viewWithTag:101];
        button.didselect=@"NO";
        _buttontag=@"0";
        
    }
    
    if (button.tag==101) {
        button.didselect=@"YES";
        SSChangeButton * button=[self viewWithTag:100];
        button.didselect=@"NO";
         _buttontag=@"1";
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
if([_buttontag isEqualToString:@"0"])
{

    return 3;
}
    return 2;
}
// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
//{
//
//
//
//}


@end
