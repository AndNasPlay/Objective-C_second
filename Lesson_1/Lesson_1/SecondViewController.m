//
//  SecondViewController.m
//  Lesson_1
//
//  Created by Андрей Щекатунов on 13.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIView *newView = [[UIView alloc]initWithFrame:CGRectMake(20, 100, 100, 100)];
    newView.backgroundColor = [UIColor magentaColor];
    [self.view addSubview:newView];
    
    UILabel *newLable = [[UILabel alloc] initWithFrame:CGRectMake(130, 100, 180, 30)];
    newLable.backgroundColor = [UIColor grayColor];
    newLable.tintColor = [UIColor whiteColor];
    newLable.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightLight];
    newLable.textAlignment = NSTextAlignmentCenter;
    newLable.text = @"Normal gray text";
    [self.view addSubview:newLable];
    
    UITextField *newTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, 210, 300, 100)];
    newTextField.borderStyle = UITextBorderStyleRoundedRect;
    newTextField.placeholder = @"Enter text....";
    newTextField.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightBold];
    [self.view addSubview:newTextField];
    
    UITextView *newTextView = [[UITextView alloc]initWithFrame:CGRectMake(20, 320, 300, 100)];
    newTextView.backgroundColor = [UIColor greenColor];
    newTextView.tintColor = [UIColor whiteColor];
    newTextView.text = @"Normal text View";
    [self.view addSubview:newTextView];
    
    UIActivityIndicatorView *newIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    newIndicatorView.color = [UIColor purpleColor];
    newIndicatorView.frame = self.view.bounds;
    newIndicatorView.hidesWhenStopped = YES;
    [newIndicatorView startAnimating];
    [self.view addSubview:newIndicatorView];
    
    UIButton *indicatorButton = [[UIButton alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 500, 200, 50)];
    indicatorButton.backgroundColor = [UIColor blackColor];
    [indicatorButton setTitle:@"Show" forState:UIControlStateNormal];
    [self.view addSubview:indicatorButton];
}


@end
