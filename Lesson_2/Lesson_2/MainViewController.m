//
//  MainViewController.m
//  Lesson_2
//
//  Created by Андрей Щекатунов on 18.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "MainViewController.h"
#import "MainTableViewCell.h"
#import "SecondTableViewController.h"

@interface MainViewController ()
@property (strong, nonnull) UITableView *mainTableView;
@property (strong) NSString *identifire;
@property (strong, nonnull) NSMutableArray *elementsArr;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _elementsArr = [NSMutableArray arrayWithObjects:@1, @2, @3, @4, @4, @4, @4, nil];
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height /2) style:UITableViewStylePlain];
    self.view.backgroundColor = [UIColor whiteColor];
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
    _identifire = @"identifire";
    
    UIButton *secondVcButton = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-100.0, 350.0, 200.0, 60.0)];
    secondVcButton.backgroundColor = [UIColor blackColor];
    [secondVcButton setTitle:@"Go to the second VC" forState:UIControlStateNormal];
    [secondVcButton addTarget:self action:@selector(openSecondVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondVcButton];
    
}

- (void)openSecondVC: (UIButton *)sender {
    [self SecondVCOne];
}

- (void)SecondVCOne {
    SecondTableViewController *secondVC = [[SecondTableViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MainTableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:self.identifire];
    if (!myCell) {
        myCell = [[MainTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:self.identifire];
        myCell.oneLable.text = [NSString stringWithFormat:@"лево %@", _elementsArr[indexPath.row]];
        myCell.secondLable.text = [NSString stringWithFormat:@"право %@", _elementsArr[indexPath.row]];
        myCell.img.image = [UIImage imageNamed:@"planet"];
    }
    
    return myCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _elementsArr.count;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_elementsArr removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
}


@end
