//
//  ApiManager.m
//  Lesson_3
//
//  Created by Андрей Щекатунов on 23.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import "ApiManager.h"
#import "QTNews.h"

#define API_TOKEN @"14f3ab92a8474483a644e16198af112b"
#define API_URL_IP_ADDRESS @"https://newsapi.org/v2/top-headlines?country=ru&apiKey="

@implementation ApiManager

+ (instancetype)sharedInstance {
    static ApiManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ApiManager alloc] init];
    });
    return instance;
}


@end
