//
//  ViewController.m
//  LO_JSONParse
//
//  Created by fuxiaohui on 15/8/20.
//  Copyright (c) 2015年 Henan Lanou Technology Co. Ltd. All rights reserved.
//

#import "ViewController.h"
#import "LO_Student.h"
#import "JSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  使用系统提供的类进行JSON数据解析
 */
- (IBAction)parseJSON:(id)sender {
    //json的文件路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Student" ofType:@"json"];
    
    //提取内容
    NSData *contentData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    //解析json数据
    NSError *error = nil;
    NSMutableArray *array = [NSJSONSerialization JSONObjectWithData:contentData options:NSJSONReadingMutableContainers error:&error];
    
    //判断是否出现问题
    if (error == nil) {
        NSLog(@"%@", array);
    } else {
        NSLog(@"%@", error);
    }
    
    //数据封装
    NSMutableArray *studentArray = [[NSMutableArray alloc] initWithCapacity:3];
    
    for (NSDictionary *dic in array) {
        LO_Student *student = [[LO_Student alloc] initWithDictionary:dic];
        [studentArray addObject:student];
    }

    for (LO_Student *stu in studentArray) {
        NSLog(@"%@", stu);
    }
}

/**
 *  使用第三方JSONKit进行JSON数据解析
 */
- (IBAction)parseJSONWithJSONKit:(id)sender {
    //获取json文件的路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Student" ofType:@"json"];
    
    //获取json文件的内容
    NSString *contentString = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    //使用JSONKit解析JSON数据
    NSArray *array = [contentString objectFromJSONString];
    NSLog(@"%@", array);
    
    //数据封装
    NSMutableArray *studentArray = [[NSMutableArray alloc] initWithCapacity:3];
    for (NSDictionary *dic in array) {
        LO_Student *student = [[LO_Student alloc] initWithDictionary:dic];
        [studentArray addObject:student];
    }
    
    //打印数据
    for (LO_Student *stu in studentArray) {
        NSLog(@"%@", stu);
    }
}



@end
