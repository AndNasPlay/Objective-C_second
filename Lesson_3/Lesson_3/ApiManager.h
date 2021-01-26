//
//  ApiManager.h
//  Lesson_3
//
//  Created by Андрей Щекатунов on 23.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QTNews.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApiManager : NSObject

+(instancetype) sharedInstance;

@end

NS_ASSUME_NONNULL_END
