//
//  ViewController.m
//  test
//
//  Created by Mac on 16/6/16.
//  Copyright © 2016年 lyq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

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
    
    [self createCollectionView];
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

/*创建CollectionView*/
- (void)createCollectionView
{
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc]init];
    
    UICollectionView * collectionView = [[UICollectionView alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    /*设置默认collectionView的背景颜色---白色*/
    collectionView.backgroundColor = [UIColor whiteColor];
    /*设置collectionView的代理*/
    collectionView.delegate = self;
    collectionView.dataSource = self;
    /*添加collectionView到父视图*/
    [self.view addSubview:collectionView];
    /*注册重用cell*/
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    /*注册重用区头区尾View*/
    [collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    [collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer"];
}

#pragma mark - ----------------collectionView协议方法-----------------
/*设置collectionView区数-默认为1*/
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSLog(@"%s",__FUNCTION__);
    return 1;
}
/*设置collectionView行数-默认为20*/
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}
/*设置collectionView行内容*/
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor =[UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    return cell;
}
/*设置collectionView区头内容*/
- (UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__FUNCTION__);
    if (kind == UICollectionElementKindSectionHeader) {
        UICollectionReusableView * headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
        return headerView;
    }else
    {
        UICollectionReusableView * footerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"footer" forIndexPath:indexPath];
        return footerView;
    }
}
/*设置collectionView区头大小*/
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(414, 300);
}
/*设置Cell距离边界尺寸*/
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
