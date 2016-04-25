//
//  ViewController.m
//  iOS_UICollectionView02_020112
//
//  Created by  西岡 康平 on 2016/04/25.
//  Copyright © 2016年 KoheiNshioka. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ラベルに表示させるデータを格納
    self.dataArray = @[@"あ",@"い",@"う"];
    self.imageArray = @[@"London,jpg",@"Paris,jpg",@"Tokyo,jpg"];
    
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}


- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    Cell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    //aCell.myLabel.text = self.dataArray[indexPath.row];
    
    NSString *images = self.imageArray[indexPath.row];
    
    NSLog(@"%@ - %@", self.dataArray[indexPath.row] , images);
    
//    aCell.myImage.image = [UIImage imageNamed:@"London.jpg"];
    
    aCell.myImage.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    
     NSLog(@"%@", self.imageArray[indexPath.row]);

    return aCell;

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
