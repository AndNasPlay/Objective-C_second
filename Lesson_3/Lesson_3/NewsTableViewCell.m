//
//  NewsTableViewCell.m
//  Lesson_3
//
//  Created by Андрей Щекатунов on 23.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _author = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, UIScreen.mainScreen.bounds.size.width / 2, 40.0)];
        _author.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_author];
        
        _publishedAt = [[UILabel alloc] initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width/2, 0.0, UIScreen.mainScreen.bounds.size.width / 2, 40.0)];
        _publishedAt.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_publishedAt];
        
        _title = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 40.0, UIScreen.mainScreen.bounds.size.width - 10, 100.0)];
        _title.numberOfLines = 0;
        _title.textAlignment = NSTextAlignmentNatural;
        [self.contentView addSubview:_title];
        
        _img = [[UIImageView alloc] initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width/2 - 50.0, 140, 100.0, 100.0)];
        [self.contentView addSubview:_img];
        
        _contentLable = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 240, UIScreen.mainScreen.bounds.size.width - 10, 200.0)];
        _contentLable.textAlignment = NSTextAlignmentNatural;
        _contentLable.numberOfLines = 0;

        [self.contentView addSubview:_contentLable];
        
    }
    return self;
}

@end
