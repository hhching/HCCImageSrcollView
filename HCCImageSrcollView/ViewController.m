//
//  ViewController.m
//  HCCImageSrcollView
//
//  Created by apple on 15/10/7.
//  Copyright (c) 2015年 com.h.limited. All rights reserved.
//

#import "ViewController.h"
#import "ImageScrollView.h"

#define screen_width [UIScreen mainScreen].bounds.size.width

@interface ViewController ()<ImageScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *_imgetestArray;
    _imgetestArray=@[@"http://web.img.chuanke.com/fragment/2acf901944ab8a0029b552fdd33d6adc.jpg",@"http://web.img.chuanke.com/fragment/725cf5a88b0a6904799eac3d88791344.jpg",@"http://web.img.chuanke.com/fragment/edfbc5bcc2dbaa15fce9f9397caf8834.jpg",@"http://web.img.chuanke.com/fragment/800672cfcfedfd6c923bd5b5c0f68083.jpg"];
    CGRect frame = CGRectMake(0, 64, screen_width, 150);
    ImageScrollView *imageScrollView = [[ImageScrollView alloc] initWithFrame:frame];
    [imageScrollView setImageArray:_imgetestArray];
    imageScrollView.delegate = self;
    [self.view addSubview:imageScrollView];
}

#pragma mark- ImageScrollViewDelegate
-(void)didSelectImageAtIndex:(NSInteger)index
{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"" message:@"" delegate:self cancelButtonTitle:@"知道了～～" otherButtonTitles:nil];
    alertView.title =@"回调";
    alertView.message=[NSString stringWithFormat:@"我是第%i张图片",index];
    [alertView show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
