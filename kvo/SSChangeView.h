//
//  SSChangeView.h
//  kvo
//
//  Created by apple on 16/10/10.
//  Copyright © 2016年 ss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSChangeButton.h"

@interface SSChangeView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)SSChangeButton * buyButton;
@property (nonatomic,strong)SSChangeButton * sellButton;
@property (nonatomic,strong)UITableView * tableview;
@property (nonatomic,copy)NSString * buttontag;
@end
