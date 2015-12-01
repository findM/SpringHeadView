//
//  ViewController.m
//  Sample
//
//  Created by 陈光临 on 15/12/1.
//  Copyright © 2015年 cn.chenguanglin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Positioning.h"

#import "UIScrollView+SpringHeadView.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *headView;

@property (nonatomic, strong) UIImageView *topImageView;


@property (nonatomic, assign) CGFloat originY;
@property (nonatomic, assign) CGFloat originHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    self.topImageView.frame = CGRectMake(0, 0, self.tableView.bounds.size.width, SpringHeadViewHeight);
    [self.tableView addSpringHeadView:self.topImageView];
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cid = @"index";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cid];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cid];
        cell.textLabel.text = @"test";
    }
    return cell;
}

#pragma mark - getter
- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

-(UIImageView *)topImageView{
    if (_topImageView == nil) {
        _topImageView = [[UIImageView alloc] init];
        _topImageView.image = [UIImage imageNamed:@"top-pic"];
    }
    return _topImageView;
}



- (UIView *)headView{
    if(_headView == nil){
        _headView = [[UIView alloc] init];
    }
    return _headView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

