//
//  MainViewController.m
//  Lesson_1
//
//  Created by Андрей Щекатунов on 13.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemIndigoColor];
    
    UIButton *secondVcButton = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 120, 200, 60)];
    secondVcButton.backgroundColor = [UIColor magentaColor];
    
    [secondVcButton setTitle:@"Go to the second VC" forState:UIControlStateNormal];
    [secondVcButton addTarget:self action:@selector(openSecondVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondVcButton];
    
    UISegmentedControl *newSegmentControl = [[UISegmentedControl alloc] initWithItems:@[@"first", @"second"]];
    newSegmentControl.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 220, 200.0, 50.0);
    newSegmentControl.backgroundColor = [UIColor redColor];
    newSegmentControl.selectedSegmentIndex = 0;
    [self.view addSubview:newSegmentControl];
    
    UISlider *newSlider = [[UISlider alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 320, 200.0, 50.0)];
    newSlider.tintColor = [UIColor magentaColor];
    newSlider.value = 0.5;
    [self.view addSubview:newSlider];
    
    UILabel *sliderLable = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 370, 200.0, 50.0)];
    sliderLable.tintColor = [UIColor whiteColor];
    sliderLable.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:sliderLable];
    
    UIProgressView *newProgressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    newProgressView.progressTintColor = [UIColor yellowColor];
    newProgressView.backgroundColor = [UIColor blackColor];
    newProgressView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 450, 200, 50);
    newProgressView.progress = 0.6;
    [self.view addSubview:newProgressView];
    
    UIImageView *newImage = [[UIImageView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-150.0, 500, 300, 300)];
    newImage.image = [UIImage imageNamed:@"space"];
    newImage.contentMode = UIViewContentModeScaleAspectFit;
    newImage.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:newImage];
}


- (void)openSecondVC: (UIButton *)sender {
    [self SecondVCOne];
}

- (void)SecondVCOne {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}


@end
