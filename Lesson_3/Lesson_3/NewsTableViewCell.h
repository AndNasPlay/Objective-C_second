//
//  NewsTableViewCell.h
//  Lesson_3
//
//  Created by Андрей Щекатунов on 23.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *author;
@property (nonatomic, strong) UILabel *title;
@property (nonatomic, strong) UILabel *publishedAt;
@property (nonatomic, strong) UILabel *contentLable;
@property (nonatomic, strong) UIImageView *img;


@end

NS_ASSUME_NONNULL_END
