//
//  ViewController.m
//  test
//
//  Created by Mac on 16/6/16.
//  Copyright © 2016年 lyq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

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
    
    [self createTableView];
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

#pragma mark---CreateTableView---
-(void)createTableView{
    UITableView*myTableView=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    myTableView.delegate=self;
    myTableView.dataSource=self;
    
    [myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:myTableView];
}
#pragma mark---tableViewDelegate---
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
