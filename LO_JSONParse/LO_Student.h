//
//  LO_Student.h
//  LO_JSONParse
//
//  Created by fuxiaohui on 15/8/20.
//  Copyright (c) 2015年 Henan Lanou Technology Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LO_Student : NSObject

@property (nonatomic, retain) NSString *name, *gender, *age;

- (instancetype)initWithDictionary:(NSDictionary *)otherDictionary;

@end
