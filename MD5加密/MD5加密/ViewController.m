//
//  ViewController.m
//  MD5
//
//  Created by iMac on 16/7/8.
//  Copyright © 2016年 Sinfotek. All rights reserved.
//

#import "ViewController.h"
#import "NSString+MD5.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textF;
@property (strong, nonatomic) IBOutlet UITextField *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
    [self.view addGestureRecognizer:tap];
    
    
}
- (void)tapAction {
    
    [self.view endEditing:YES];
}

- (IBAction)MD5Action:(id)sender {
    
    NSString *MD5Str = [NSString MD5Encrypt:_textF.text];
    
    _resultLabel.text = [NSString stringWithFormat:@"结果:%@",MD5Str];
    
}



@end
