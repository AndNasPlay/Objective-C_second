//
//  ViewController.m
//  Lesson_3
//
//  Created by Андрей Щекатунов on 23.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "ViewController.h"
#import "NewsTableViewCell.h"
#import "QTNews.h"

@interface ViewController ()

@property (strong, nonnull) UITableView *mainTableView;
@property (strong) NSString *identifire;
@property (nonatomic, retain) NSMutableArray *items;
@property (nonatomic, retain) NSString *titel;
@property (nonatomic, retain) NSArray<QTArticle *> *articles;
@property (nonatomic, assign) NSNumber *totalResults;
@property (nonatomic, assign) NSInteger totalResultsInt;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _items = [[NSMutableArray alloc] init];
    [self getJSONData];
    
    NSLog(@"%lu", (unsigned long)_articles.count);
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStyleInsetGrouped];
    self.view.backgroundColor = [UIColor whiteColor];
    _mainTableView.rowHeight = 440.0;
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
    _identifire = @"identifire";
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _articles.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NewsTableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:self.identifire];
    if (!myCell) {
        myCell = [[NewsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.identifire];
        if (_articles != nil) {
            
            myCell.author.text = [NSString stringWithFormat:@"Автор %@", [[_articles[indexPath.row] valueForKey:@"source"]valueForKey:@"name"]];
            myCell.publishedAt.text = [_articles[indexPath.row] valueForKey:@"publishedAt"];
            myCell.title.text = [_articles[indexPath.row] valueForKey:@"title"];
            myCell.contentLable.text = [_articles[indexPath.row] valueForKey:@"description"];
            myCell.img.image = [UIImage imageNamed:@"planet"];
        } else {
            myCell.author.text = @"Author - Dima";
            myCell.title.text = @"Беспорядки в Москве";
            myCell.contentLable.text = @"Не повезло";
        }
    }
    return myCell;
}

//-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    [_elementsArr removeObjectAtIndex:indexPath.row];
//    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
//}
//

-(void)getJSONData {
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://newsapi.org/v2/top-headlines?country=ru&apiKey=14f3ab92a8474483a644e16198af112b"]];
    NSError *error = nil;
    id response = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers | NSJSONReadingMutableLeaves error:&error];
    
    if (error) {
        NSLog(@"%@", [error localizedDescription]);
    } else {
        self.items = response;
        //        NSLog(@"%@", self.items);
        _totalResults = [_items valueForKey:@"totalResults"];
        _totalResultsInt = [_totalResults intValue];
        _articles = [_items valueForKey:@"articles"];
                
        [self.mainTableView reloadData ];
    }
    
}


@end
