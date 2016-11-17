//
//  RootViewController.m
//  TimeShaft
//
//  Created by 蒋正峰 on 2016/11/17.
//  Copyright © 2016年 蒋正峰. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong, readwrite) UIButton *photoBtn;
@property (nonatomic, strong, readwrite) UIImageView *bgImageView;
@property (nonatomic, strong, readwrite) UIImagePickerController *imagePicker;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.bgImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)photoBtnClicked:(id)sender{

    self.imagePicker = [[UIImagePickerController alloc]init];
    [self presentViewController:self.imagePicker animated:YES completion:^{
        
    }];
}


-(UIImageView *)bgImageView{
    if (_bgImageView == nil) {
        _bgImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    }
    return _bgImageView;
}

-(UIButton *)photoBtn{
    if (_photoBtn == nil) {
        _photoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_photoBtn addTarget:self action:@selector(photoBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _photoBtn;
}


@end
