//
//  MainTableViewCell.m
//  Lesson_2
//
//  Created by Андрей Щекатунов on 20.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _oneLable = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, UIScreen.mainScreen.bounds.size.width / 2, 40.0)];
        _oneLable.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_oneLable];
        
        _secondLable = [[UILabel alloc] initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width / 2, 0.0, UIScreen.mainScreen.bounds.size.width / 2, 40.0)];
        _secondLable.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_secondLable];
        
        _img = [[UIImageView alloc] initWithFrame:CGRectMake(170, 0.0, 40.0, 40.0)];
        [self.contentView addSubview:_img];
    }
    return self;
}

@end
