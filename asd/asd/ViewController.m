//
//  ViewController.m
//  asd
//
//  Created by yesway on 16/8/1.
//  Copyright © 2016年 joker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,copy) void (^someBlock)(NSString * parame);

@end

@implementation ViewController

//- (void)setSomeBlock:(void (^)(NSString *))someBlock {
//    _someBlock = ^(NSString * param) {
//        NSLog(@"%@",param);
//    };
//    
//    _someBlock = someBlock;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setSomeBlock:^(NSString * parame) {
        NSLog(@"%@",parame);
    }];
    
    self.someBlock = ^(NSString * param) {
        
    };
    
    self.run3(@"tom").run4(@"joker");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// 链式调用
- (void (^)(NSString * param))run1 {
    return ^(NSString *param) {
      NSLog(@"%@",param);
    };
}

- (void (^)(NSString * param))run2 {
    return ^(NSString * param) {
      NSLog(@"%@",param);
    };
}

//返回值是函数，并且函数的返回值是调用者本身，可以构成链式调用



- (ViewController * (^)(NSString * param))run3 {
    
    return ^(NSString * param) {
        
        NSLog(@"%@",param);
        
        return self;
    };
    
}

- (ViewController * (^)(NSString * param))run4 {
    
    return ^(NSString * param) {
        
        NSLog(@"%@",param);
        
        return self;
    };
    
}







@end
