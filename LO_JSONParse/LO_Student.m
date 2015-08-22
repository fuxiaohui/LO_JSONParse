//
//  LO_Student.m
//  LO_JSONParse
//
//  Created by fuxiaohui on 15/8/20.
//  Copyright (c) 2015年 Henan Lanou Technology Co. Ltd. All rights reserved.
//

#import "LO_Student.h"

@implementation LO_Student

- (instancetype)initWithDictionary:(NSDictionary *)otherDictionary {
    if (self = [super init]) {
        //使用KVC对属性赋值
        [self setValuesForKeysWithDictionary:otherDictionary];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@, gender:%@, age:%@", self.name, self.gender, self.age];
}

@end
