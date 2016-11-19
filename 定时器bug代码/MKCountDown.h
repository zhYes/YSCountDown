//
//  MKCountDown.h
//  发大财
//
//  Created by FDC-iOS on 16/10/14.
//  Copyright © 2016年 meilun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MKCountDown : NSObject

- (void)destoryTimer;

///每秒走一次，回调block
-(void)countDownWithPER_SECBlock:(void (^)())PER_SECBlock;
- (void)countDownWithPER_SEC: (UITableView*)tableView: (NSArray*)dataList;

@end
