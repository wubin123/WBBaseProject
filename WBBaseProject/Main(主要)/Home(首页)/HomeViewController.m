//
//  HomeViewController.m
//  WBBaseProject
//
//  Created by 吴斌 on 2017/6/27.
//  Copyright © 2017年 吴斌. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
- (IBAction)click:(id)sender {
    WB_SHOW_ALERT(@"提示", @"哈哈");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"宽贷";
    WB_SHOW_ALERT(@"提示", @"哈哈");
  
}

- (void)viewWillAppear:(BOOL)animated{
//    WB_SHOW_ALERT(@"提示", @"哈哈");
    WB_AlertAtView(@"风刀霜剑看");
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
