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
#import "QFTimerPicker.h"

@interface QFViewController ()

@end

@implementation QFViewController

- (IBAction)showYearSelectView:(id)sender {
    QFDatePickerView *datePickerView = [[QFDatePickerView alloc]initYearPickerViewWithResponse:^(NSString *str) {
        NSString *string = str;
        NSLog(@"str = %@",string);
    }];
    [datePickerView show];
}

- (IBAction)showDatePickerView:(id)sender {
    
    QFDatePickerView *datePickerView = [[QFDatePickerView alloc]initDatePackerWithResponse:^(NSString *str) {
        NSString *string = str;
        NSLog(@"str = %@",string);
    }];
    [datePickerView show];
}

- (IBAction)showTimePickerVierw:(id)sender {
    
    QFTimePickerView *pickerView = [[QFTimePickerView alloc]initDatePackerWithStartHour:@"18" endHour:@"12" period:5 response:^(NSString *str) {
        NSString *string = str;
        NSLog(@"str = %@",string);
    }];
    [pickerView show];
}

- (IBAction)chooseDate:(UIButton *)sender {
    QFTimerPicker *picker = [[QFTimerPicker alloc]initWithSuperView:self.view response:^(NSString *selectedStr) {
        NSLog(@"%@",selectedStr);
        [sender setTitle:selectedStr forState:UIControlStateNormal];
        
    }];
    
    [picker show];
}
@end
