//
//  TextVC.m
//  test
//
//  Created by Mac on 16/6/18.
//  Copyright © 2016年 lyq. All rights reserved.
//

#import "TextVC.h"



@interface TextVC ()



@end

@implementation TextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString*str=@"我的钥匙";
    [[NSUserDefaults standardUserDefaults] setObject:str forKey:@"str"];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
