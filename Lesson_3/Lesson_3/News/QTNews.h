//
//  QTNews.h
//  Lesson_3
//
//  Created by Андрей Щекатунов on 24.01.2021.
//  Copyright © 2021 Andrey Shchekatunov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QTNews;
@class QTArticle;
@class QTSource;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface QTNews : NSObject
@property (nonatomic, copy)   NSString *status;
@property (nonatomic, assign) NSInteger totalResults;
@property (nonatomic, copy)   NSArray<QTArticle *> *articles;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface QTArticle : NSObject
@property (nonatomic, strong)         QTSource *source;
@property (nonatomic, nullable, copy) NSString *author;
@property (nonatomic, copy)           NSString *title;
@property (nonatomic, nullable, copy) NSString *theDescription;
@property (nonatomic, copy)           NSString *url;
@property (nonatomic, nullable, copy) NSString *urlToImage;
@property (nonatomic, copy)           NSString *publishedAt;
@property (nonatomic, nullable, copy) NSString *content;
@end

@interface QTSource : NSObject
@property (nonatomic, nullable, copy) NSString *identifier;
@property (nonatomic, copy)           NSString *name;

@end

NS_ASSUME_NONNULL_END
