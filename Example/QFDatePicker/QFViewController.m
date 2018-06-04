//
//  QFViewController.m
//  QFDatePicker
//
//  Created by qingfengiOS on 06/04/2018.
//  Copyright (c) 2018 qingfengiOS. All rights reserved.
//

#import "QFViewController.h"
#import "QFDatePickerView.h"
#import "QFTimePickerView.h"

@interface QFViewController ()

@end

@implementation QFViewController
- (IBAction)btn:(id)sender {
    QFDatePickerView *p = [[QFDatePickerView alloc]initDatePackerWithResponse:^(NSString *str) {
        NSLog(@"%@",str);
    }];
    [p show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
