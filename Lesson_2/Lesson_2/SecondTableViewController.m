//
//  SecondTableViewController.m
//  Lesson_2
//
//  Created by Андрей Щекатунов on 20.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()
@property (strong) NSString *secondIndent;
@property (strong, nonnull) NSMutableArray *secondElementsArr;

@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.secondElementsArr = [NSMutableArray arrayWithObjects:@1, @2, @3, @4, @5, @6, @7, @8, nil];
    self.secondIndent = @"secondIdentifire";
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.secondElementsArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.secondIndent];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.secondIndent];
    }
    if (indexPath.row %2 == 0) {
        cell.imageView.image = [UIImage imageNamed:@"planet"];
        cell.textLabel.text = nil;
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"%@", self.secondElementsArr[indexPath.row]];
        cell.imageView.image = nil;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.secondElementsArr removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
}


@end
