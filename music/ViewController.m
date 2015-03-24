//
//  ViewController.m
//  music
//
//  Created by ohtatomotaka on 2015/03/24.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//




#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UILabel *label;
    int labelY;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSTimer *tm = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(moveMethod) userInfo:nil repeats:YES];
    [self addLabel];
    
}
-(void)moveMethod{
    labelY=labelY+10;
    label.center = CGPointMake(200, labelY);
    if (label.center.y >= 600) {
        [label removeFromSuperview];
        [self addLabel];
    }
}

- (void)addLabel{

    labelY = 100;
    label = [[UILabel alloc] initWithFrame:CGRectMake(0,0,30,30)];
    label.text = @"★";
    label.center = CGPointMake(200, labelY);
    [self.view addSubview:label];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
