//
//  ViewController.m
//  kvo
//
//  Created by apple on 16/10/10.
//  Copyright © 2016年 ss. All rights reserved.
//

#import "ViewController.h"
#import "SSChangeButton.h"
#import "SSChangeView.h"
#define SCREENW [UIScreen mainScreen].bounds.size.width
#define SCREENH [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SSChangeView * change=[[SSChangeView alloc]initWithFrame:CGRectMake(0, 100,SCREENW, 100)];
    [self.view addSubview:change];
    
    
    
    UILabel * label=[[UILabel alloc]initWithFrame:CGRectMake(100, 200, 200, 120)];
    label.numberOfLines=0;
    label.textAlignment=NSTextAlignmentRight;
    label.text=@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
