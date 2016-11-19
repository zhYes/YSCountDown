//
//  TableViewController.m
//  定时器bug代码
//
//  Created by FDC-iOS on 16/10/14.
//  Copyright © 2016年 meilun. All rights reserved.
//

#import "TableViewController.h"
#import "MKCountDown.h"   //  57 - 8 -03    

@interface TableViewController ()

@property(nonatomic,strong)NSArray *dataList;

@end

@implementation TableViewController {
    MKCountDown    *_countDown;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _countDown = [[MKCountDown alloc] init];
    [_countDown countDownWithPER_SEC:self.tableView :self.dataList];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.tag = indexPath.row;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    
    return cell;
}


///  销毁
- (void)dealloc {
    NSLog(@"\n控制器销毁 - dealloc - 整个世界安静了\n");
    [_countDown destoryTimer];
}

///  数据
- (NSArray *)dataList {
    NSMutableArray * nmArr = [NSMutableArray array];
    if (_dataList == nil) {
        NSArray *arr = [NSArray array];
        for (int i = 0; i < 50; i ++) {
            arr = @[@"1481881249", @"1496881149",@"1496889949",@"1496881349",@"1496881449",@"1296881529",
                    @"1296881629",@"1486881729",@"1476991029",@"1476994829",@"1476990929",@"1476997029"
                    ];
            [nmArr addObjectsFromArray:arr];
        }
    }
    return nmArr.copy;
}
@end





