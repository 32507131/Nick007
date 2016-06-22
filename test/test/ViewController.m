//
//  ViewController.m
//  test
//
//  Created by Mac on 16/6/16.
//  Copyright © 2016年 lyq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (NSInteger i=0; i<9; i++) {
        UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame=CGRectMake(20+i%3*((414-20)/3),20+i/3*((736-20)/3), (414-20*4)/3, (736-20*4)/3);
        btn.backgroundColor=[UIColor greenColor];
        [self.view addSubview:btn];
    }
//    for (long long i=0; i<10000000000; i++) {
//        NSString*string=@"Abc";
//        string=[string lowercaseString];
//        string=[string stringByAppendingString:@"xyz"];
//         NSLog(@"%@~~~~%lld",string,i);
//    
//    }
    //    string=[string uppercaseString];
    
    //    string=[string capitalizedString];
//    NSLog(@"~~~%@",string);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
